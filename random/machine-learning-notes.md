# Artificial neural networks

*   Why store data as columns instead of rows? **TODO**
*   An artificial neural network (ANN) works because of composition of nonlinear functions.
*   A [sigmoid function](https://en.wikipedia.org/wiki/Sigmoid_function) is any function having a characteristic *"S"-shaped curve* or *sigmoid curve*. Common examples are
    -   Logistic function
    -   Hyperbolic tangent
    -   Arctangent
*   We use a sigmoid function instead of an indicator function because we prefer continous output (so that we can use gradient descent on it).
*	Why do we use activation functions?
	If we do not, the neural network will only be able to capture linear effects. Therefore, it would be only as good as a linear regression. Popular activation functions are sigmoid functions and ReLU (rectified linear unit).
*   Why is ReLU a good activation function? **TODO**
*	Why initialize the weights randomly?
	If we initialize them as zero, all the nodes will be symmetric (forever, since the gradient w.r.t. each node will also be the same), and therefore it would be as good as having a single node in each layer.
*   Why initialize the weights to small values?
    If not, the inputs to the sigmoid function will be large, and the gradient will be close to zero, making the gradient descent very slow.

