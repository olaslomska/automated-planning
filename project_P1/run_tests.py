import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time

runtime = [0.0]
num = [3]
while(runtime[-1] < 60.0):
    try:
        program = subprocess.run(["python3","./generate-problem.py", "-d", "1", "-r", "0" ,"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    start = time.perf_counter()
    try:
        result = subprocess.run(["planutils", "run", "ff", "domain.pddl", f"drone_problem_d1_r0_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"], capture_output=True, text=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    
    end = time.perf_counter()
    with open("output.txt", "w") as f:
        f.write(result.stdout)

    new_num = num[-1] + 3
    new_runtime = end - start
    if new_runtime < 60.0:
        num.append(new_num)
        runtime.append(new_runtime)
        print(new_runtime)
    else: break
    
print(num)
print(runtime)

plt.plot(num, runtime, marker='o')
plt.xlabel('Size')
plt.ylabel('Time[s]')
plt.savefig('report/Figure_1.png')
plt.show()