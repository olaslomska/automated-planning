import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time
import os 
#seq-sat-fdss-2 lama-first seq-sat-fd-autotune-2
#  seq-opt-fdss-2 seq-opt-bjolp seq-opt-lmcut
alias = input()
runtime = [0.0]
num = [2]
while(runtime[-1] < 60.0):
    try:
        if not os.path.exists(f"drone_problem_d1_r1_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"):
            program = subprocess.run(["python3","./generate-problem_P2_cost.py", "-d", "1", "-r", "1" ,"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    start = time.perf_counter()
    try:
        #result = subprocess.run(["planutils", "run", "metric-ff", "domain.pddl", f"drone_problem_d1_r1_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"], capture_output=True, text=True)
        result = subprocess.run(["planutils", "run", "downward","--", "--alias", f"{alias}","domain.pddl", f"drone_problem_d1_r1_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"], capture_output=True, text=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    
    end = time.perf_counter()
    file_name = f"output/{alias}/output_size_{num[-1]}.txt"
    with open(file_name, "w") as f:
        f.write(result.stdout)

    new_num = num[-1] + 5
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
#plt.savefig('report/Figure_1.png')
plt.savefig(f'report/Figure_2_{alias}.png')
plt.show()