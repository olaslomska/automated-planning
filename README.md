# Automated Planning Project

This repository contains the results of the laboratory projects on Automated Planning. The project involves modeling domains and problems using PDDL (Planning Domain Definition Language), generating problem instances, solving them with various automated planners, and analyzing their performance.

## Project Structure

The repository is divided into several main directories representing the different phases of the project:

- **`project_P1/`**: Contains the baseline PDDL domain and problem definitions. Includes Python scripts for generating problem instances (`generate-problem.py`) and running automated tests against planners (`run_tests.py`, etc.).
- **`project_P2/`**: Contains subdirectories (`project_P2_1`, `project_P2_2`) extending the baseline models, typically introducing advanced features like action costs and numeric fluent evaluation. Includes test runners specific to Phase 2.
- **`project_P3/`**: Further extends the planning models (e.g., adding continuous variables/durative actions for drone problems). Includes specific domain/problem files and runner scripts (e.g., `run_tests_P3.py`) to evaluate specific planners like Optic and LPG-td.
- **`report/`**: Contains the LaTeX source code and compiled PDF of the final project report, detailing the modeling choices, experiments, and performance comparisons (plots/graphs).

## Contributions

### Aleksandra Słomska (`olaslomska`)
- **Initial Setup:** Initialized the repository and designed the initial baseline PDDL domains and predicates.
- **Problem & Script Generation:** Developed the Python problem generators (`generate-problem.py`) and test execution scripts across multiple phases (e.g., `run_tests_P2`).
- **Phase 2 Development:** Implemented changes for Phase 2, including adding action costs and updating the domain logic.
- **Experiment Execution:** Ran extensive tests utilizing different planners (e.g., LAMA) and gathered performance metrics.
- **Visualization:** Handled the creation of Matplotlib graphs, performance plots, and their integration into the final LaTeX report.

### Zofia Narloch (`zosianarloch`)
- **Problem Instances:** Wrote and refined hand-crafted PDDL problem instances and generated execution plans across multiple phases.
- **Algorithm Testing:** Conducted extensive testing and comparison of various planning algorithms (BFS, IDS, A*, GBFS) and heuristics, analyzing performance metrics such as plan length and execution time across different problem sizes.
- **Evaluation & Analysis:** Conducted dedicated tests and comparisons for specific assignment questions (e.g., sections 1.2, 1.3, and 2.1).
- **Phase 3 Focus:** Managed the updates and implementations for Phase 3, specifically incorporating the Optic planner, generating drone problem instances, and analyzing their results.
- **Report Writing:** Contributed significantly to the LaTeX report by documenting experimental results, assembling figures, comparing planner performance, and completing specific theoretical questions. 
