# Needle-Tissue Interaction Force Estimation using Residuals and Interaction Models
The goal is to reconstruct the contact forces exerted on the needle mounted on the end-effector of a robot manipulator, in a sensorless fashion. This is been achieved considering that contact as a fault in the actuation system. The considered fault detection and isolation techniques are based on generalized momenta, which require proprioceptive sensors only. Then, a method for identifying rupture events is presented.
Using the Recursive Least Squares (RLS) algorithm, the needle-tissue interaction force is estimated and the estimation error is analyzed to extract information about possible layer transitions.

Laboratory data of a KUKA LWR IV+ robot manipulator with a needle mounted on the end-effector penetrating multi-layered gel and meat piece have been used.


## Sensorless Reconstruction of Interaction Forces via Residual Method
Consider the Lagrangian model of the robot
<img src="https://user-images.githubusercontent.com/62264708/82364158-2e49d900-9a0f-11ea-8eac-5c818cfcfb00.png">

