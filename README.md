# Needle-Tissue Interaction Force Estimation using Residuals and Interaction Models
The goal is to reconstruct the contact forces exerted on the needle mounted on the end-effector of a robot manipulator, in a sensorless fashion. This is been achieved considering that contact as a fault in the actuation system. The considered fault detection and isolation techniques are based on generalized momenta, which require proprioceptive sensors only. Then, a method for identifying rupture events is presented.
Using the Recursive Least Squares (RLS) algorithm, the needle-tissue interaction force is estimated and the estimation error is analyzed to extract information about possible layer transitions.

Laboratory data of a KUKA LWR IV+ robot manipulator with a needle mounted on the end-effector penetrating multi-layered gel and meat piece have been used.


## Sensorless Reconstruction of Interaction Forces via Residual Method
Consider the Lagrangian model of the robot

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82364158-2e49d900-9a0f-11ea-8eac-5c818cfcfb00.png"> </p>

where <img src="https://user-images.githubusercontent.com/62264708/82365168-96e58580-9a10-11ea-9b0b-dcd5b3a197a4.png"> is the vector of force and moment exerted by the environment on the tip of the needle and <img src="https://user-images.githubusercontent.com/62264708/82365166-964cef00-9a10-11ea-9fe5-959235e5ea42.png"> is the geometric Jacobian of the manipulator at the contact point. We define <img src="https://user-images.githubusercontent.com/62264708/82365169-96e58580-9a10-11ea-997b-eec5afa52792.png"> as the joint torque caused by the contact.
