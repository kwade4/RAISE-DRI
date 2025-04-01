---
title: Machine Learning and Deep Learning Fundamentals 
layout: default 
parent: Data Science and AI  
nav_order: 6
---
# Machine Learning & Deep Learning Fundamentals 
{: .no_toc }

1. TOC
{:toc}


## The Mathematics Behind Machine Learning Models 
Machine learning models may seem like magic, but behind the scenes, they rely on complex mathematical frameworks to learn patterns, make predictions, and and make decisions. At their core, these models are built on a foundation of linear algebra, calculus, probability, and optimization techniques to transform raw data into meaningful predictions. 

### Mathematics for Data Representation 

### What are Parameters?  
When a machine learning model is trained, it tries to find the best way to make accurate predictions. To do this, it adjusts **parameters** or the internal settings that determine how the model makes its decisions.

Think of parameters as dials on a machine. Just like adjusting the temperature on an oven to bake a perfect cake, a model tweaks its parameters to improve its predictions. 

Examples of parameters include:
* **Weights**: numbers that determine how much importance the model gives to different inputs.
* **Bias**: value that helps adjust predictions to be more accurate.

### What Is Gradient Descent?
**Gradient descent** is the process a machine learning model uses to improve itself by adjusting its internal settings (parameters) to reduce errors. Gradient descent is an optimization algorithm that helps the model learn patterns in data by minimizing a function called the **loss function**, which measures how far the model's predictions are from the actual values.

**🏔️ Intuition: Finding the Lowest Point**
Imagine you’re hiking down a hill in thick fog, trying to reach the lowest point. Since you can’t see far ahead, you take small steps in the direction that seems to go downhill. Over time, you make adjustments, and try to take steps that move you toward the lowest point (where the model’s error is minimized). This is exactly how gradient descent works—by taking small steps in the direction that reduces the model’s error.

**📉 The Math Behind Gradient Descent**  
Gradient descent is an optimization algorithm used to update a machine learning model’s parameters in order to minimize prediction errors. It works by iteratively adjusting the parameters in the direction that reduces the loss function (a measure of how incorrect the model’s predictions are).

Mathematically, gradient descent updates the model’s parameters using the formula:

$$\theta_{t+1} = \theta_t - \alpha \nabla L(\theta_t)$$


* $$\theta_{t}$$: Model parameters at timestep $$t$$
    * Represents the current vales of the model's parameters. 
    * The goal is to update these parameters to minimize prediction errors. 
* $$\alpha$$: Learning rate
    * A small positive number that controls how big of a step the model takes in each iteration.
    * If $$\alpha$$ is too large, the model may take steps that are too big and may miss the optimal solution. 
    * If $$\alpha$$ is too small, the model make take a long time to **converge** (find the optimal solution). 
* $$\nabla L(\theta_t)$$: Gradient of the loss function
    * The gradient $$\nabla L(\theta_t)$$ is the partial derivative of the loss function $$L(\theta)$$, with respect to the model's current parameters $$\theta_t$$. 
    * It points in the direction of the steepest increase in error.  
    * Since we want to **minimize** the error, we subtract the gradient to move in the opposite direction.

**🚀 How It Works in Practice**
1. **Initialize Parameters**: Start with random values for $$\theta$$. 
2. **Compute the Gradient**: Calculate how much the loss function changes with respect to each parameter.
3. **Update the Parameters**: Adjust $$\theta$$ using the formula above to move toward lower error.
4. **Repeat**: Continue until the model reaches a minimum loss or stops improving.

This process helps the model learn and make better predictions over time and helps it generalize to unseen data.


## Traditional Machine Learning Models 

Traditional machine learning models have been the foundation of many data Whether you're trying to predict numerical outcomes, classify data into categories, or reduce the dimensionality of complex datasets, there are a variety of algorithms to choose from. Although deep learning models are becoming more prevalent, traditional models remain valuable due to their effectiveness, versatility, and interpretability.

### Linear Regression 
Linear regression is one of the simplest models. It establishes a relationship between a dependent variable (target) and one or more independent variables (features) by fitting a straight line to the data. The goal is to minimize the error between predicted and actual outcomes by finding the best-fitting line that minimizes the sum of squared residuals.

The model can be represented as:

$$y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots + \beta_n x_n + \epsilon$$

where $$y$$ is the target variable, $$\beta_i$$ are the coefficients, and $$\epsilon$$ is the error term. 

### Logistic Regression
Logistic regression is used for binary classification tasks, where the goal is to predict one of two possible outcomes (e.g., 0 or 1). It applies a logistic function (sigmoid function) to map the output of a linear regression model to probabilities between 0 and 1. It is effective for problems where you want to estimate the probability of a certain class based on input features.

### Support Vector Machines (SVMs)
SVMs are powerful classifiers that find the optimal hyperplane that separates data points of different classes. The model maximizes the margin, which is the distance between the hyperplane and the closest data points (support vectors). SVMs can handle both linear and non-linear decision boundaries by using kernel functions to map the data into higher dimensions where a linear separation is possible.

### Decision Trees 
A decision tree is a flowchart-like structure where each internal node represents a decision based on a feature, and each leaf node represents a predicted output value. The tree recursively splits the data based on the best feature that reduces a certain measure of impurity (e.g., Gini index or entropy for classification). Decision trees are simple and interpretable but can suffer from overfitting if they are too deep.

### Random Forests 
Random forests are an ensemble learning method that builds multiple decision trees and aggregates their predictions. Each tree is trained on a random subset of the data, and the final prediction is made by averaging (for regression) or voting (for classification) across all trees. This reduces the risk of overfitting compared to a single decision tree.

### XGBoost (Extreme Gradient Boosting)
GBoost is a gradient boosting method that builds an ensemble of decision trees in a sequential manner, where each tree tries to correct the errors made by the previous tree. It is designed to be highly efficient, scalable, and effective at handling large datasets. XGBoost incorporates regularization to prevent overfitting and can be fine-tuned with hyperparameters.

### K-Nearest Neighbours (KNN)
KNN is a simple and intuitive algorithm where the model classifies a data point based on the majority class of its $$k$$ nearest neighbors in the feature space. The distance between data points is typically calculated using metrics like Euclidean distance. KNN is non-parametric and requires no model training, but it can be computationally expensive for large datasets.

### Principal Component Analysis (PCA)
PCA is a technique used for reducing the number of features in a dataset while retaining as much information (variance) as possible. It works by transforming the data into a new set of orthogonal axes (principal components) that capture the most variance in the data. PCA is commonly used for preprocessing before applying other models, especially when dealing with high-dimensional data.

PCA is based on the eigen-decomposition of the covariance matrix $$C$$ of the data:

$$C v_i = \lambda_i v_i$$

where $$v_i$$ are the eigenvectors (principle components) and $$\lambda_i$$ are the eigenvalues. 

### t-Distributed Stochastic Neighbour Embedding (t-SNE)
t-SNE is a non-linear dimensionality reduction technique primarily used for visualizing high-dimensional data in two or three dimensions. It minimizes the divergence between probability distributions in the original space and the lower-dimensional space, making it useful for exploring the structure of complex datasets. t-SNE is particularly popular in the visualization of embeddings or clustering results.

t-SNE minimizes the Kullback-Leibler divergence between the original data’s probability distribution $$P$$ and the low-dimensional distribution $$Q$$: 

$$D_{KL}(P \parallel Q) = \sum_{i,j} P_{ij} \log \frac{P_{ij}}{Q_{ij}}
$$

## Artificial Neural Networks
Neural networks are a type of machine learning algorithm inspired by the way the human brain processes information. They consist of layers of interconnected nodes, often referred to as **neurons**. These neurons are responsible for processing and learning from data.

At a high level, neural networks work by processing input data and producing an output, or prediction. These predictions are then compared to the actual values, and the network learns by improving its guesses over time.


### Structure of Neural Networks 
* **Input Layer**: Receives the data (e.g., images, text, or numerical values). It acts as the entry point for all data into the neural network.
* **Hidden Layers**: Multiple hidden layers apply mathematical functions and transformations to the input data to identify patterns or features in the data. These layers allow the network to learn more abstract representations of the data.
* **Output Layer**: Produces the final prediction or decision. t takes the features learned from the hidden layers and uses them to generate an output, which could be a classification label, a regression value, or any other decision based on the task at hand.

Each layer in a neural network transforms the input data and passes the results to the next layer for further processing. The network learns by adjusting the weights of connections between neurons to minimize errors in predictions or classifications. This learning is achieved through a process called **backpropagation**.

### How Neural Networks Learn 
Neural networks improve their predictions by adjusting the internal **weights and biases** based on feedback from how wrong their predictions are. This is done using a **loss function**, which quantifies how far the network's predictions are from the actual values.

**Backpropagation** is the method by which the neural network adjusts its weights. It calculates the gradients of the loss function, and tells the network which weights need to be updated to minimize the error.

**Gradients** show the network the best direction to adjust the weights for better predictions. Think of the gradients as arrows that point the network in the direction of lower error and help it improve its predictions step by step.

The **learning rate** determines how much the network adjusts its weights at each step. A high learning rate may cause the network to miss important details, while a low rate could lead to slow convergence. The learning rate acts as a balancing factor to ensure that the network learns without straying too far off course.

The learning process occurs over multiple **epochs**, where an epoch is a single complete pass through the training dataset. Each time the network completes an epoch, it refines its predictions and makes small adjustments to its internal parameters. As the epochs progress, the model gradually improves and gets closer to an optimal solution. After enough epochs, the network may reach a point where further improvements are minimal, which is a sign that the model has learned all that it can from the training data.

In summary, neural networks learn by continuously adjusting their weights based on the feedback from the error of their predictions. Through backpropagation, the gradients show the network the way to reduce error, and the learning rate controls how quickly the network adapts. This iterative process, refined over many epochs, allows the network to capture complex patterns and improve its performance on new data. The result is a powerful model capable of making accurate predictions.

### Deep Learning 
Deep learning is a subset of machine learning that involves neural networks with many **hidden layers**. These deeper networks can learn complex patterns and representations from large amounts of data, making them particularly powerful for tasks such as image recognition, natural language processing, and speech recognition.

While traditional neural networks may consist of a few layers, deep learning models use multiple hidden layers, allowing them to learn hierarchical representations of the data. Each layer progressively extracts more complex features from the data, which makes deep learning models highly effective for tasks involving large datasets and intricate patterns.

**Important Concepts in Deep Learning**: 

**Activation Functions**  
Activation functions play a critical role in neural networks. After each layer processes input data, the activation function determines whether the neuron should be activated (i.e., whether it should pass information to the next layer). Without activation functions, neural networks would essentially be linear models, which wouldn't allow them to learn complex patterns.

Common activation functions include:
* **ReLU (Rectified Linear Unit)**: The most popular activation function, ReLU outputs zero for negative values and the value itself for positive values. It helps networks learn quickly and is less prone to the vanishing gradient problem.
* **Sigmoid**: Outputs a value between 0 and 1, useful for binary classification tasks but can cause vanishing gradients in deep networks.
* **Tanh (Hyperbolic Tangent)**: Outputs values between -1 and 1, often used for tasks where negative values are necessary.
* **Softmax**: Used in the output layer for multi-class classification, converting raw model outputs into probability distributions. 

**Batch Size** 
The batch size refers to the number of training samples that are passed through the network before the weights are updated. A large batch size means the model gets a more accurate estimate of the gradient, but it requires more memory and computational power. Smaller batch sizes result in faster updates but can lead to more noisy gradients. Choosing the right batch size is important for balancing training speed and model performance.

**Regularization**
Due to their large number of parameters, deep learning models are prone to overfitting. Regularization techniques can be used to prevent overfitting and help the model generalize to new, unseen data. 

Common techniques include: 
* **Dropout**: Randomly "drops" or disables a fraction of neurons during training to prevent over-reliance on specific neurons.
* **L2 Regularization (Ridge)**: Adds a penalty for large weights to the loss function, discouraging the model from fitting the noise in the training data.
*** Elastic Net Regularization**: A combination of L1 (Lasso) and L2 regularization that provides a balance between feature selection and weight shrinkage. Elastic net regularization encourages sparse models and prevents large coefficients. 

Interestingly, regularization is also used in traditional machine learning models to prevent overfitting. L1 and L2 regularization are often used in algorithms like Linear Regression and Logistic Regression. L2 regularization (Ridge) penalizes large coefficients. L1 regularization (Lasso) encourages sparsity by forcing some coefficients to be zero, which results in simpler models that tend to have better generalizability. 
