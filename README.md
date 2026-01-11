# Analysis of Variable Structure Systems (VSS) in Non-Smooth Manifolds
**Control Systems Research | MATLAB & Simulink**

##  Overview
This repository contains the mathematical modeling and simulation of a **Variable Structure System (VSS)** characterized by nonlinear relay control. The project focuses on the synthesis of the **Sliding Mode (Скользящий режим)**, evaluating the system's robustness and invariance against external perturbations.

This work was conducted as part of the DCST-FCST curriculum at **Moscow Aviation Institute (Faculty 3)**.

##  Key Research Objectives
- **Dynamic Synthesis**: Investigating the transitional behavior of systems where the control law undergoes discrete switching.
- **Sliding Surface Verification**: Mathematically defining the boundary conditions where the state vector is "trapped" on a switching manifold.
- **Numerical Optimization**: Justifying the use of specialized solvers for "stiff" differential equations in the presence of high-frequency chattering.

##  Technical Implementation

### **The "Stiffness" Problem & Solver Selection**
Relay systems with sliding modes are **mathematically stiff**. Standard solvers (like `ode45`) often fail or produce excessive rounding errors due to the instantaneous derivative changes at the switching surface.
- **Solver Used**: `ode23s` (Modified Rosenbrock formula).
- **Reasoning**: This stiff solver provides a stable numerical approximation of the non-smooth manifold, successfully mitigating chattering-induced integration errors.

### **Mathematical Manifold**
The sliding mode existence is verified by the reaching condition:
$$\lim_{s \to 0} s \cdot \dot{s} < 0$$
where $s(x) = 0$ represents the switching surface.

[Image of a phase portrait showing sliding mode control with a switching surface and state trajectory convergence]

##  Results & Visualization
The simulation was executed via `NonLinMod5.mdl` (Variant 3) under various input influences ($g$).

1. **Zero Input ($g=0$)**: Observation of pure sliding mode convergence on the phase plane.
2. **Step Response ($g=1.5$)**: Analysis of the reaching phase and area of emergence for the sliding regime.

### **Phase Trajectory Analysis**
The phase portraits clearly demonstrate the **invariance property**—once the state reaches the manifold, the system dynamics become independent of the plant's linear parameters.

[Image of a phase plane plot showing a trajectory hitting a switching line and sliding towards the origin]

##  Repository Structure
- `/Models`: Contains `.mdl` and `.slx` Simulink files.
- `/Scripts`: MATLAB initialization scripts for system parameters ($K, T, \text{Hysteresis}$).
- `/Reports`: Formal academic documentation of the research findings.

---
**Developed by:** [Ehabsen]  
**Degree:** B.Sc. Control Systems & Computer Science (MAI)
