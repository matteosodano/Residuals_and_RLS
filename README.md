# Needle-Tissue Interaction Force Estimation using Residuals and Interaction Models
The goal is to reconstruct the contact forces exerted on the needle mounted on the end-effector of a robot manipulator, in a sensorless fashion. This is been achieved considering that contact as a fault in the actuation system. The considered fault detection and isolation techniques are based on generalized momenta, which require proprioceptive sensors only. Then, a method for identifying rupture events is presented.
Using the Recursive Least Squares (RLS) algorithm, the needle-tissue interaction force is estimated and the estimation error is analyzed to extract information about possible layer transitions.

Laboratory data of a KUKA LWR IV+ robot manipulator with a needle mounted on <img src="https://user-images.githubusercontent.com/62264708/82499693-6f66e980-9af2-11ea-98e4-6caa93df79ed.png"> the end-effector penetrating multi-layered gel and meat piece have been used.

Implementation is done in MATLAB R2018b.

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
Typical needle-tissue interaction force versus displacement can be seen in the figure below. Five phases can be noticed: no contact (1), contact (2), layer rupture (3), tip and shaft insertion (4), retraction (5).

<p align="center"> <img width="460" height="240" src="https://user-images.githubusercontent.com/62264708/82500665-19934100-9af4-11ea-9954-eb1ddd30c467.png"> </p>

### Interaction Model
Call <img src="https://user-images.githubusercontent.com/62264708/82611030-e0c09e00-9bbf-11ea-941f-ca9a10119b4c.png"> the position of the tip of the needle with respect to the base frame. The interaction force <img src="https://user-images.githubusercontent.com/62264708/82610756-3ea0b600-9bbf-11ea-954c-22a4b979114a.png"> is described by means of the Kelvin-Voigt generalized model, that captures both the elastic force due to the resistance of the layer surface to the needle insertion and the damping force due to the viscous friction along the needle:

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82610866-7dcf0700-9bbf-11ea-87f5-0ccc2fa32872.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82610758-3f394c80-9bbf-11ea-8e74-d57de8b5995c.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82610760-3fd1e300-9bbf-11ea-9a6f-ffc995298c12.png"> </p>

### Interaction Force Prediction
The Recursive Least Squares (RLS) algorithm used to estimate the Kelvin-Voigt parameters and their covariance matrix is

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725955-10b39280-9ce1-11ea-9da8-a4798bc48498.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725956-114c2900-9ce1-11ea-91c9-e1019d3fc68f.png"> </p>


leading to the estimate interaction force:

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725957-11e4bf80-9ce1-11ea-814d-769bb7c85a30.png"> </p>

The estimation error can be defined as

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725958-11e4bf80-9ce1-11ea-88eb-39ba58928179.png"> </p>

### Layer Transition
Inspecting the estimation error, informations about layer ruptures can be found. As a matter of fact, neglecting modelling errors, disturbances and noise, the estimated force should reconstruct well the measured force unless an abrupt change happens: typically, this is due to a layer rupture. The decision function

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82727502-2e85f500-9ceb-11ea-84e5-80eb3259c685.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82727503-2f1e8b80-9ceb-11ea-9a72-f3c7fb8a52ff.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82727504-2f1e8b80-9ceb-11ea-92dd-7bc56e7874c3.png"> </p>

is introduced. If

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82727505-2fb72200-9ceb-11ea-987b-68ab7386b857.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725958-11e4bf80-9ce1-11ea-88eb-39ba58928179.png"> </p>

then a layer ruptures is supposed to occur. The parameters <p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725958-11e4bf80-9ce1-11ea-88eb-39ba58928179.png"> </p> and <p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82725958-11e4bf80-9ce1-11ea-88eb-39ba58928179.png"> </p> are the variance of the error function in the default and abrupt change case.
