
import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

runtime = [0.0]
num = [3]
while(runtime[-1] < 5.0):
    try:
        program = subprocess.run(["python3","./generate-problem.py", "-d", "1", "-r", "0" ,"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    try:
        result = subprocess.run(["planutils", "run", "ff", "domain.pddl", f"drone_problem_d1_r0_l{num[-1]}_p{num[-1]}_c{num[-1]}_g{num[-1]}_ct2.pddl"], capture_output=True, text=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
        
    with open("output.txt", "a") as f:
        f.write(result.stdout)

    for line in result.stdout.strip().split('\n'):
        if "total time" in line:
            number_str = line.strip().split()[0]
            new_runtime = float(number_str)
    new_num = num[-1] + 2
    num.append(new_num)
    runtime.append(new_runtime)

#print(num)
print(runtime)

plt.plot(num, runtime, marker='o')
plt.title('size of the problem and the time required to find a solution in the tests')
plt.xlabel('Size')
plt.ylabel('Time[s]')
plt.show()
