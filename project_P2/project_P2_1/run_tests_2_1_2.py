import subprocess
import time
import re

test_configs = [
    ("gbf", None),       # Greedy Best First Search without heuristic
    ("gbf", "hmax"),       # Greedy Best First Search with hMAX
    ("gbf", "hff"),   # Greedy Best First Search with hFF
    ("gbf", "hadd"),     # Greedy Best First Search with hADD
    ("gbf", "landmark"), # Greedy Best First Search with landmark
    ("ehs", None),       # EHC without heuristic
    ("ehs", "hmax"),   # EHC with hMAX
    ("ehs", "hff"),    # EHC with hFF
    ("ehs", "hadd"),    # EHC with hADD
    ("ehs", "landmark") # EHC with landmark
]

domain_file = "domain.pddl"

num = 7 
problem_file = f"drone_problem_d1_r1_l{num}_p{num}_c{num}_g{num}_ct2.pddl"
subprocess.run(["python3", "./generate-problem_P2.py", "-d", "1", "-r", "1" ,"-l" ,str(num) ,"-p", str(num) ,"-c" ,str(num) ,"-g", str(num)], capture_output=True)
print(f"{'Algorithm':<10} | {'Heuristic':<10} | {'Time (s)':<10} | {'Plan Length'}")

for search_alg, heuristic in test_configs:
    
    command = ["python3","-m", "pyperplan", "-s", search_alg]
    if heuristic:
        command.extend(["-H", heuristic])
        heur_label = heuristic.upper()
    else:
        heur_label = "NONE"
    command.extend([domain_file, problem_file])

    try:
        start_time = time.time()
        result = subprocess.run(command, capture_output=True, text=True, timeout=60.0)
        elapsed_time = time.time() - start_time

        output = (result.stdout + result.stderr).lower()
        if "plan length" in output or "solution found" in output:
            plan_length_match = re.search(r'plan length:\s*(\d+)', output)
            plan_length = plan_length_match.group(1) if plan_length_match else "Unknown"
            
            print(f"{search_alg.upper():<10} | {heur_label:<10} | {elapsed_time:<10.2f} | {plan_length}")
        else:
            print(f"{search_alg.upper():<10} | {heur_label:<10} | {'Error/Fail':<10} | N/A")
            print(f"\n--- PYPERPLAN ERROR ---\n{result.stderr}\n-----------------------\n")

    except subprocess.TimeoutExpired:
        print(f"{search_alg.upper():<10} | {heur_label:<10} | {'Timeout':<10} | > 60s")