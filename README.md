# ODEs-in-Simulating-Aeronautical-Systems

This project applies **Ordinary Differential Equations (ODEs)** to simulate key aeronautical systems, including aircraft longitudinal dynamics, Doppler shift in communications, propeller spin-up, and actuator lag. The project combines analytical derivations, state-space modeling, and MATLAB simulations to analyze dynamic behavior and system responses.

Course: MATH 202 – Ordinary Differential Equations  
Institution: Zewail City of Science, Technology and Innovation  
Semester: Fall 2025  

---

## 🚀 Project Overview

The objective of this project is to model and simulate **aeronautical systems** using linear and nonlinear ODEs. The project emphasizes:

- Aircraft longitudinal dynamics (forward/vertical velocity, pitch rate, pitch angle)  
- Doppler shift effects on aeronautical communications  
- Propeller spin-up transient behavior  
- Actuator lag and response delays  

The project is implemented in **MATLAB**, providing numerical solutions, visualization of dynamic modes, and comparative studies of analytical vs. numerical methods.

---

## ✈ Aircraft Longitudinal Dynamics

The longitudinal dynamics describe motion in the vertical plane and include four key state variables:

- **Forward velocity deviation (u)** → Small deviation from trim speed  
- **Vertical velocity deviation (w)** → Related to angle-of-attack and lift changes  
- **Pitch rate (q)** → Angular rotation about lateral axis  
- **Pitch angle (θ)** → Aircraft attitude relative to horizontal plane  

### Dynamic Modes

- **Short-period mode** → Rapid oscillations in q and w with moderate damping  
- **Phugoid mode** → Slow oscillations in u and θ with light damping  

---

## 📡 Doppler Shift in Aeronautical Communications

Simulates how high-speed aircraft cause frequency and phase variations in received signals:

- **First-order ODE model** → Frequency shift due to velocity  
- **Second-order ODE model** → Frequency shift considering acceleration  
- **Phase error tracking** → Helps design robust communication systems with Doppler compensation  

---

## ⚙ Propeller Spin-Up Dynamics

Models propeller acceleration under step throttle input using:

- **Nonlinear first-order ODE** → Includes torque and aerodynamic drag  
- **Exact analytical solution** → Serves as reference for numerical methods  
- **Numerical methods**:  
  - Euler method  
  - Runge–Kutta Fourth Order (RK4)  

Simulation shows RK4 closely matches the exact solution, while Euler is less accurate in transient behavior.

---

## 🛠 Actuator Lag Dynamics

Models delay in actuator response using a **first-order ODE**:

- **Input command u(t)** vs. **actuator output δ(t)**  
- Analytical solution demonstrates how time constant τ affects system response  
- Numerical simulation using Euler and RK4 methods  

---

## 🧮 MATLAB Simulations

### Simulated Outputs

- Time histories for **u, w, q, θ** in aircraft dynamics  
- Phase error and Doppler frequency shift plots  
- Propeller speed over time for spin-up scenarios  
- Actuator output vs. input command  

### Numerical Techniques

- Euler Method → Simple but less accurate  
- Runge–Kutta Fourth Order (RK4) → High accuracy for nonlinear systems  

---

## 🛠 Tools & Technologies

- MATLAB  
- Ordinary Differential Equations (ODEs)  
- Linear and nonlinear dynamic modeling  
- Laplace transforms  
- State-space analysis  

---

## 👨‍💻 Author(s)

- Mohammed Soliman – 202402280  
- Omer Okasha – 202400591  
- Youssef Fakhry – 202401128  
- Karim Islam – 202400656  

---

## 📌 Key Takeaway

This project demonstrates the application of **ODE theory** to practical aeronautical systems, highlighting:

- Linearization of nonlinear dynamics for tractable analysis  
- Use of MATLAB for simulation and visualization  
- Numerical solution techniques (Euler, RK4) for nonlinear and linear systems  
- Modeling of real-world aeronautical challenges like Doppler shift, propeller spin-up, and actuator lag  
