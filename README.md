# Needle-Tissue Interaction Force Estimation using Residuals and Interaction Models
The goal is to reconstruct the contact forces exerted on the needle mounted on the end-effector of a robot manipulator, in a sensorless fashion. This is been achieved considering that contact as a fault in the actuation system. The considered fault detection and isolation techniques are based on generalized momenta, which require proprioceptive sensors only. Then, a method for identifying rupture events is presented.
Using the Recursive Least Squares (RLS) algorithm, the needle-tissue interaction force is estimated and the estimation error is analyzed to extract information about possible layer transitions.

Laboratory data of a KUKA LWR IV+ robot manipulator with a needle mounted on<img src="https://user-images.githubusercontent.com/62264708/82499693-6f66e980-9af2-11ea-98e4-6caa93df79ed.png"> the end-effector penetrating multi-layered gel and meat piece have been used.


## Sensorless Reconstruction of Interaction Forces via Residual Method
Consider the Lagrangian model of the robot

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82364158-2e49d900-9a0f-11ea-8eac-5c818cfcfb00.png"> </p>

where <img src="https://user-images.githubusercontent.com/62264708/82365168-96e58580-9a10-11ea-9b0b-dcd5b3a197a4.png"> is the vector of force and moment exerted by the environment on the tip of the needle and <img src="https://user-images.githubusercontent.com/62264708/82365166-964cef00-9a10-11ea-9fe5-959235e5ea42.png"> is the geometric Jacobian of the manipulator at the contact point. The joint torque caused by the contact is defined as <img src="https://user-images.githubusercontent.com/62264708/82365169-96e58580-9a10-11ea-997b-eec5afa52792.png">.

This contact joint torque is reconstructed by means of the residuals <img src="https://user-images.githubusercontent.com/62264708/82499322-ca4c1100-9af1-11ea-9a43-0cd816f3a5c7.png">, defined as

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82499323-ca4c1100-9af1-11ea-839c-468c86d721af.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82499324-cae4a780-9af1-11ea-9834-86357f6777da.png"> </p>

where <img src="https://user-images.githubusercontent.com/62264708/82499694-6f66e980-9af2-11ea-8871-4a6d3554f475.png"> is the generalized momentum. During free motion <img src="https://user-images.githubusercontent.com/62264708/82499696-6fff8000-9af2-11ea-9845-227efd7eabeb.png">. When a contact happens, some entries of <img src="https://user-images.githubusercontent.com/62264708/82499322-ca4c1100-9af1-11ea-9a43-0cd816f3a5c7.png"> may vary (they will return to zero when the contact is lost). For large values of <img src="https://user-images.githubusercontent.com/62264708/82499698-6fff8000-9af2-11ea-9f9d-3d065da0369a.png">, the evolution of <img src="https://user-images.githubusercontent.com/62264708/82499322-ca4c1100-9af1-11ea-9a43-0cd816f3a5c7.png"> will reproduce the evolution of <img src="https://user-images.githubusercontent.com/62264708/82499693-6f66e980-9af2-11ea-98e4-6caa93df79ed.png">.

Finally, the force estimation:

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82500438-a8ec2480-9af3-11ea-9578-ae9d66101e17.png"> </p>

The force estimation via residuals has been validated with the force measurement provided by the force/torque sensor mounted on the manipulator.

For the implementation, the residual equation has been discretized as

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82500440-a984bb00-9af3-11ea-9f2d-a40d835503ad.png"> </p>

## Detection of Layer Transition
<p align="center"> <img width="460" height="300" src="https://user-images.githubusercontent.com/62264708/82500665-19934100-9af4-11ea-9954-eb1ddd30c467.png"> </p>

<p align="center"> Typical needle-tissue interaction force versus displacement. Five phases can be noticed: no contact (1), contact (2), layer rupture (3), tip and shaft insertion (4), retraction (5) </p>
