import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time
import os 
import resource


def limit_memory():
    max_mem = 2 * 1024**3
    resource.setrlimit(resource.RLIMIT_AS, (max_mem, max_mem))


drones = range(1, 6)

os.makedirs(f"output/optic", exist_ok=True)

for d in drones:
    
    runtime = [0.0]
    num = [3]
        
    while True:
        try:
            if not os.path.exists(f"drone_problem_d{d}_r{d}_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"):
                program = subprocess.run(["python3","./generate-problem_P3.py", "-d", str(d), "-r", str(d),"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
        except subprocess.CalledProcessError as e:
            print(f"Command failed with return code {e.returncode}")
        start = time.perf_counter()
        output = ""
        try:
            result = subprocess.run(["planutils", "run", "optic", "domain.pddl", f"drone_problem_d{d}_r{d}_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"], 
            capture_output=True, 
            text=True, 
            timeout = 60.0,
            preexec_fn=limit_memory
            )
            output = result.stdout
            if result.stderr:
                output += "\n" + result.stderr
        except subprocess.TimeoutExpired as e:
            output = e.stdout.decode('utf-8') if isinstance(e.stdout, bytes) else (e.stdout or "")
        except subprocess.CalledProcessError as e:
            print(f"Command failed with return code {e.returncode}")
        
        end = time.perf_counter()
        file_name = f"output/optic/output_d{d}_size_{num[-1]}.txt"
        with open(file_name, "w") as f:
            f.write(output)

        new_num = num[-1] + 1
        new_runtime = end - start
        if ";;;; Solution Found" in output or "step" in output.lower() or "plan found" in output.lower():
            num.append(new_num)
            runtime.append(min(new_runtime, 60.0))
            print(new_runtime)
        else: break
        
    print(num)
    print(runtime)

    os.makedirs("report", exist_ok=True)
    plt.plot(num, runtime, marker='o')
    plt.title(f'Optic - {d} Drones')
    plt.xlabel('Size')
    plt.ylabel('Time[s]')
    plt.savefig(f'report/Figure_3_d{d}.png')
    plt.clf()
