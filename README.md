# Needle-Tissue Interaction Force Estimation using Residuals and Interaction Models
Developed by: M. Sodano, F. Roscia, G. Roggiolani (2020).

Supervisor: prof. M. Vendittelli.


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
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82727613-e1eee980-9ceb-11ea-9994-5ddcbae67f92.png"> </p>

then a layer ruptures is supposed to occur. The parameters <img src="https://user-images.githubusercontent.com/62264708/82727616-e5827080-9ceb-11ea-8f29-e83d29d6597a.png"> and <img src="https://user-images.githubusercontent.com/62264708/82727617-e61b0700-9ceb-11ea-89df-21128d6977c8.png"> are the variance of the error function in the default and abrupt change case.

The main contribution of this work is an off-line method for identifying these variances based on a statistical analysis of the estimation error and its first-order time derivative.
1. From the plot of the measured force, identify the number <img src="https://user-images.githubusercontent.com/62264708/82741191-0bd9f780-9d50-11ea-9c16-c376d8e43277.png"> of expected layer transitions. Notice that each transition introduces a peak in the error function (and therefore, two peaks in its derivative);
2. Compute the local maxima of <img src="https://user-images.githubusercontent.com/62264708/82741192-0c728e00-9d50-11ea-9c31-f2cdcebb5788.png"> and sort them in decreasing order. Pick the <img src="https://user-images.githubusercontent.com/62264708/82741193-0c728e00-9d50-11ea-90c7-be7e7d3bbd17.png">-th one: because of the above reasoning, it should not depend on any abrupt event, but only on modelling errors, disturbances and noise. Denote the value of this peak with <img src="https://user-images.githubusercontent.com/62264708/82741194-0c728e00-9d50-11ea-8c01-ad60aa6335ab.png">.
3. Divide the time in two disjoint sets, <img src="https://user-images.githubusercontent.com/62264708/82741427-fe257180-9d51-11ea-8053-dffd45211c08.png"> and <img src="https://user-images.githubusercontent.com/62264708/82741428-febe0800-9d51-11ea-8c07-57ce3aa24126.png">: the former will denote the times for which a puncturing event is expected to occur, the latter contains the others. For any abrupt event, denote with: <img src="https://user-images.githubusercontent.com/62264708/82741429-febe0800-9d51-11ea-9ac2-7aa14118f7eb.png"> the first time instant for which <img src="https://user-images.githubusercontent.com/62264708/82741431-02ea2580-9d52-11ea-9cef-e8067247f67f.png"> and <img src="https://user-images.githubusercontent.com/62264708/82741430-ff569e80-9d51-11ea-893b-1a6f577c2862.png"> the last time instant for which <img src="https://user-images.githubusercontent.com/62264708/82741426-fe257180-9d51-11ea-9155-c74a1ea553d2.png">. Finally <p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82741432-0382bc00-9d52-11ea-90cc-a302d0615d90.png"> </p> <p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82741434-0382bc00-9d52-11ea-9423-40fb44f3c49d.png"> </p>
4. Finally compute
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82741435-041b5280-9d52-11ea-8d61-4bd26fec60bd.png"> </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/82741436-041b5280-9d52-11ea-9581-b99b767096a1.png"> </p>

<p align="center"> <img width="460" height="240" src="https://user-images.githubusercontent.com/62264708/82763707-dc87c100-9e09-11ea-8e67-fa9245fc9689.png"> </p>
<p align="center"> <img width="460" height="240" src="https://user-images.githubusercontent.com/62264708/82763706-dbef2a80-9e09-11ea-86ea-c67cc3239b7d.png"> </p>

## Execution Requirements
The ```main.m``` runs the residual method for estimating the estimation force and the RLS algorithm to predict layer transitions consequently. At first, it calls the script ```data.m```, that reads the data-set and the quantities that are necessary for the elaboration. The script is present as an example. The script ```datasets.m``` is not necessary for the elaboration, and is a collection of data-sets used during the project. 

In the function ```forceReconstruction.m```, lines 23-24, there is the possibility of including the friction torque. You should uncomment only one of the two lines. If you are willing to use a different robot from the KUKA LWR IV+, the friction torque vector at line 24 must be computed externally.

In the function ```layerDetection.m```, some initializations must be carried out. In particular, the covariance matrix is initialized at lines 15-17, and also its threshold for enabling the covariance resetting method. Parameters have been chosen with experience.


## References
Mattone, R., & De Luca, A. (2003). "Fault detection and isolation in robot manipulators". *IFATIS, IRAR002R01.*

Cacciotti, N., Cifonelli, A., Gaz, C., Paduano, V., Russo, A. V., Vendittelli, M. (2018). "Enhancing force feedback in teleoperated needle insertion through on-line identification of the needle-tissue interaction parameters". *IEEE RAS and EMBS International Conference on Biomedical Robotics and Biomechatronics (BIOROB).*
