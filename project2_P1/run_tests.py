import subprocess
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import time

runtime = []
num = [3]

open("outputs.txt", "w").close()

while True:
    try:
        program = subprocess.run(["python3","./generate_problems.py", "-d", "1", "-r", "0" ,"-l" ,f"{num[-1]}" ,"-p", f"{num[-1]}" ,"-c" ,f"{num[-1]}" ,"-g", f"{num[-1]}"], capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
        
    subprocess.run("rm -f *.java *.class p1/*.java p1/*.class", shell=True)
    
    start = time.perf_counter()
    try:
        result = subprocess.run(["./jshop2-console.sh", "p1", "p1/problem"], capture_output=True, text=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    
    end = time.perf_counter()
    
    with open("outputs.txt", "a") as f:
        f.write(result.stdout)

    new_num = num[-1] + 25
    new_runtime = end - start
    runtime.append(new_runtime)
    
    if new_num < 400:
        num.append(new_num)
        print(new_runtime)
    else: 
        break
    
print(num)
print(runtime)

plt.plot(num, runtime, marker='o')
plt.xlabel('Size')
plt.ylabel('Time[s]')
plt.savefig('Figure_1.png')
plt.show()