import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time
import os 

modes = ["speed", "quality"]
drones = range(1, 11)

for mode in modes:
    
    os.makedirs(f"output/{mode}", exist_ok=True)

    for d in drones:
        
        runtime = [0.0]
        num = [3]
        
        while(runtime[-1] < 60.0):
            try:
                if not os.path.exists(f"drone_problem_d{d}_r{d}_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"):
                    program = subprocess.run(["python3","./generate-problem_P3.py", "-d", str(d), "-r", str(d),"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
            except subprocess.CalledProcessError as e:
                print(f"Command failed with return code {e.returncode}")
            start = time.perf_counter()
            try:
                result = subprocess.run(["planutils", "run", "lpg-td","--", "domain.pddl", f"drone_problem_d{d}_r{d}_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl", f"-{mode}"], capture_output=True, text=True)
                print(result.stdout)
            except subprocess.CalledProcessError as e:
                print(f"Command failed with return code {e.returncode}")
            
            end = time.perf_counter()
            file_name = f"output/{mode}/output_d{d}_size_{num[-1]}.txt"
            with open(file_name, "w") as f:
                f.write(result.stdout)

            new_num = num[-1] + 1
            new_runtime = end - start
            if new_runtime < 60.0:
                num.append(new_num)
                runtime.append(new_runtime)
                print(new_runtime)
            else: break
            
        print(num)
        print(runtime)

        os.makedirs("report", exist_ok=True)
        plt.plot(num, runtime, marker='o')
        plt.title(f'LPG-TD ({mode}) - {d} Drones')
        plt.xlabel('Size')
        plt.ylabel('Time[s]')
        plt.savefig(f'report/Figure_3_{mode}_d{d}.png')
        plt.clf()
