import subprocess
import time
import re

test_configs = [
    ("bfs", None),       # Breadth First Search
    ("ids", None),       # Iterative Deepening Search
    ("astar", "hmax"),   # A* z hMAX
    ("gbf", "hmax")     # Greedy Best First Search z hMAX
]

domain_file = "domain.pddl"

for search_alg, heuristic in test_configs:
    
    print(f"\nTesting Algorithm:{search_alg}, Heuristics: {heuristic}")
    num = 3 
    success = True
    last_successful_num = 0
    
    while success:
        problem_file = f"drone_problem_d1_r0_l{num}_p{num}_c{num}_g{num}_ct2.pddl"
        subprocess.run(["python3", "./generate-problem.py", "-d", "1", "-r", "0" ,"-l" ,str(num) ,"-p", str(num) ,"-c" ,str(num) ,"-g", str(num)], capture_output=True)

        command = ["pyperplan"]

        command.extend(["-s", search_alg])
        
        if heuristic:
            command.extend(["-H", heuristic])
        command.extend([domain_file, problem_file])

        try:
            start_time = time.time()
            result = subprocess.run(command, capture_output=True, text=True, timeout=80.0)
            elapsed_time = time.time() - start_time

            output = (result.stdout + result.stderr).lower()
            if "plan length" in output or "solution found" in output:
                plan_length_match = re.search(r'plan length:\s*(\d+)', output)
                plan_length = plan_length_match.group(1) if plan_length_match else "Unknown"
                
                print(f"Solved size {num} in {elapsed_time:.2f} s. Plan length: {plan_length}")
                last_successful_num = num
                num += 2 
            else:
                print(f"Failed to solve size {num}. Planner output:\n{result.stderr}")
                success = False

        except subprocess.TimeoutExpired:
            print("Timeout: Exceede 1 minute")
            success = False 

    print(f"Largest solved problem for {search_alg}: {last_successful_num}")