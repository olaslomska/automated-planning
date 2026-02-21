
import subprocess

#"python3","./generate-problem.py", "-d", "0", "-r", "1" ,"-l" ,{num[0]} ,"-p", {num[0]} ,"-c" ,{num[0]} ,"-g", {num[0]}, capture_output=True, text=True
num = 3
runtime = 0.0
while(runtime < 0.4):
    try:
        program = subprocess.run(["python3","./generate-problem.py", "-d", "1", "-r", "0" ,"-l" ,f"{num}" ,"-p", f"{num}" ,"-c" ,f"{num}" ,"-g", f"{num}"], capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
    try:
        result = subprocess.run(["planutils", "run", "ff", "domain.pddl", f"drone_problem_d1_r0_l{num}_p{num}_c{num}_g{num}_ct2.pddl"], capture_output=True, text=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with return code {e.returncode}")
        
    with open("output.txt", "a") as f:
        f.write(result.stdout)

    for line in result.stdout.strip().split('\n'):
        if "total time" in line:
            number_str = line.strip().split()[0]
            runtime = float(number_str)

    num = num+2
    
