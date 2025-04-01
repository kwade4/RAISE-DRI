---
title: Introduction to Artificial Intelligence 
layout: default 
parent: Data Science and AI 
nav_order: 5
---
# Introduction to Artificial Intelligence and Machine Learrning 
{: .no_toc }

1. TOC
{:toc}

## What is Artificial Intelligence? 

**Artificial intelligence (AI)** involves simulating human intelligence in computers to perform tasks that typically require human cognitive functions like learning, reasoning, and problem-solving. 

**Machine learning** is a subset of AI and uses algorithms to learn patterns from data and make predictions without explicit programming. 

**Deep Learning** is a specialized form of machine learning that is used for very complex tasks. These models mimic the structure and reasoning of the human brain to process vast amounts of data and solve intricate problems such a image recognition, natural language processing, and speech recognition. Deep learning us especially useful when large amounts of data are available, and the problem is too complex for traditional machine learning methods. 

![ai-ml-dl](assets/images/AI-ML-DL.png)


## Supervised Learning 
In **supervised learning**, the algorithm is trained on labeled data, meaning the input data comes with the correct output or label. The goal is to learn a mapping from input to output so that the model can make predictions on new, unseen data. 

There are 2 main types of supervised learning tasks: classification and regression. 

### Classification
In classification problems, the goal is to predict a category or class for a given input. The output is a discrete label (e.g., "hot" vs "cold", "low" vs "medium" vs "high"). 

Examples of Classification Tasks:
* Email spam detection, where the model predicts whether an email is "spam" or "not spam."
* Diagnosing diseases based on patient data, such as predicting whether a tumor is malignant or benign

### Regression
Regression is used when the output is a continuous value. The goal is to predict a continuous numeric value (e.g., a temperature or a price).

Examples of Regression Tasks:
* Predicting house prices based on features like square footage, location, and number of bedrooms.
* Forecasting sales figures based on historical data and economic indicators.  


<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;"> 💡 A <strong>regression</strong> task involves predicting a continuous value, such as the temperature, while a <strong>classification</strong> task involves predicting a category, like whether the day will be "hot" or "cold". </div>  

### Summary of Supervised Learning 
✅ Requires labeled data (data that includes both input features and their corresponding target values).  
✅ The model is trained on this labeled data to make predictions for unseen data.  
✅ The learning process is "supervised" because the model receives feedback on its predictions during training.

## Unsupervised Learning 
Unsupervised learning, on the other hand, works with **unlabeled data**, meaning there are no explicit target values or labels provided. The model tries to find patterns and structures in the data without any predefined outputs. The goal is to uncover hidden relationships, groupings, or structures in the data.

The two main types of unsupervised learning tasks are clustering and dimensionality reduction. 

### Clustering  
Clustering involves grouping data points into clusters or groups based on similarities between them. The model finds natural groupings in the data without prior knowledge of what those groups might be.

Examples of Clustering Tasks: 
* Customer segmentation, where businesses group customers based on purchasing behavior to target different market segment. 
*  Identifying groups of similar images in a large collection, such as organizing photos by content (e.g., landscapes, portraits, or cityscapes).

### Dimensionality Reduction
Dimensionality reduction aims to reduce the number of input features while preserving the essential information. This can help visualize high-dimensional data and improve model performance by eliminating irrelevant features. 

Examples of Dimensionality Reduction Tasks:
* Reducing the number of variables in gene expression datasets. 
* Compressing a large set of images to fewer features for easier storage or processing in image recognition tasks. 

### Summary of Unsupervised Learning 
✅ Works with unlabeled data (data with no target or label).  
✅ The model identifies patterns, structures, or groupings in the data.  
✅ Commonly used for exploratory data analysis, data preprocessing, or feature extraction.

## How To Approach Machine Learning Problems 
**🧩 Define the Problem**  
The first step is to clearly define the problem you want the machine learning model to solve. Understanding the task is critical, whether you're looking to predict a continuous value, classify data into categories, or identify patterns.  

**📊 Collect and Prepare Data**   
Once the problem is defined, the next step is to collect relevant data. This data could come from various sources like databases, sensors, experiments, or public datasets. Once it is gathered, it is imporant to clean,  process, and perform an exploratory analysis, before training an AI model. 

* **Data Cleaning**: Data cleaning is crucial to ensure that the dataset is accurate and ready for analysis. This involves:
    * **Removing or Correcting Invalid Entries**: Identifying and removing or correcting incorrect, duplicate, or irrelevant data entries that could interfere with the model’s learning process.
    * **Handling Missing Data**: Missing values in data can affect model performance, so it’s important to decide how to handle them (e.g., impute missing values, drop rows/columns, or use machine learning models to predict missing data).

* **Data Exploration**: Before cleaning, it’s important to explore the data to understand its structure and characteristics.   
    * **Basic Statistics**: Calculating measures like mean, median, standard deviation, etc., to summarize the dataset and identify any outliers or inconsistencies.  
    * **Grouping / Filtering**: Grouping data by categories or filtering for specific subsets of interest to focus on the most relevant aspects of the data.
    * **Visualizations**: Creating plots (e.g., histograms, scatter plots, box plots) to visually inspect distributions, relationships between features, and potential patterns.

* **Data Augmentation**: In some cases, you may need to increase the size and diversity of the data to improve model performance, particularly in tasks with imbalanced datasets. This can involve:  
    * **Increasing the Size of the Dataset**: Augmenting the data by creating synthetic samples or applying transformations (e.g., image rotations, noise addition) to increase the dataset size.

    * **Correcting for Imbalance**: If certain classes or categories are underrepresented in the data, balancing the dataset (e.g., oversampling underrepresented classes or undersampling overrepresented ones) can improve model fairness and performance.

**🤖 Choose a Model**  
After preparing the data, you need to select the right machine learning model for your problem. The choice of model depends on the type of problem: 
* **Regression problems** (predicting continuous values) → Linear regression, decision trees, or neural networks.
* **Classification problems** (categorizing data) → Logistic regression, support vector machines, or convolutional neural networks (CNNs) for image classification.
* **Clustering problems** (grouping similar data points) → K-means clustering or hierarchical clustering.

When choosing a model, consider:  
✔️ **Complexity**: More complex models can capture intricate patterns but may have a higher change of overfitting. While simpler models may underfit the data.  
✔️ **Interpretability**: Simple models like linear regression are easier to understand, while deep learning models can be more opaque.  
✔️ **Computational Resources**: Some models (e.g., deep learning) require significant compute power.

<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;"> 💡 <strong>Tip</strong>: It is often a good idea to try simpler models first because they are often faster to train and may have good performance depending on your problem.</div>   


**✂️ Split the Data into Train and Test Sets**  
To ensure your model performs well on new, unseen data, it’s important to split your dataset properly. This helps prevent overfitting and ensures the model makes reliable predictions.

Machine learning datasets are typically divided into:
* 🏋️‍♂️ **Training Set** 
    * The model learns patterns and relationships from this data.
    * Helps the model adjust its parameters for better performance. 
    * Often 70-80% of the data.
* **🧪 Testing Set**
    * Evaluates how well the model performs on unseen data.  
    * Helps detect overfitting — when a model "memorizes" training data instead of learning general patterns.
    * Often 20-30% of the data. 
* **⚖️ Validation Set (Optional)**
    * Used for fine-tuning the model before testing.  
    * Helps optimize hyperparameters for better generalization.  
    * Common splits include 80-10-10 (train-validation-test) or 70-15-15.


**🔄 Train the Model**  
During training, the model learns patterns from the training data, and adjusts its internal parameters to minimize errors. The model makes predictions, compares them to actual values, and then adjusts based on the feedback it receives. This step may take time, depending on the size of the dataset and the complexity of the model.  

* **🗝️ Core Aspects of Training a Model**
    * The model learns from training data to recognize patterns.
    * It adjusts its parameters using optimization techniques like gradient descent.
    * Training continues until the model reaches an acceptable level of accuracy.
* **🧰 Python Tools & Libraries**
    * `scikit-learn`: for traditional machine learning models.
    * `TensorFlow`: used for deep learning and neural networks. 
    * `PyTorch`: flexible and well-suited for deep learning. 

**🛠️ Fine-Tune the Model** 
Once the initial model is trained, fine-tuning is necessary to improve its performance. Fine-tuning involves adjusting  hyperparameters (settings that are set before the model starts learning). These hyperparameters, such as the learning rate, the number of layers in a neural network, and the batch size, affect how well the model learns. During fine-tuning, it is also important to evaluate the model's performance on subsets of the data to avoid overfitting.  
* ⚙️**Hyperparameter Optimization**
    * **Grid Search** involves testing all possible combinations of hyperparameters from a predefined grid to find the best combination. 
    * Rather than testing every possible combination, **random search** involves randomly searching a subset of combinations.    
* 📊 **Cross-validation** 
    * **K-Fold Cross-Validation**: Split the data into $K$ subsets. The model is trained on $K-1$ subsets and tested on the remaining subset. This process repeats $K$ times with each subset being used as the test set once.
    * **Leave-One-Out Cross-Validation**: For each data point, use all other points for training and test on the single point. This is especially useful when the dataset is small.
    * **Stratified Cross-Validation**: Ensures each fold has a proportional distribution of classes, useful for imbalanced datasets.


**📈 Evalute Model Performance**  
After training and fine-tuning, the next step is to evaluate how accurately and reliably the model performs. This is done by using evaluation metrics that depend on the problem type. For classification tasks, metrics like accuracy, precision, recall, and F1-score are used. For regression, metrics such as Root Mean Squared Error (RMSE) or Mean Absolute Error (MAE) are common. 

## Evaluation Metrics 
When evaluating a machine learning model, it's important to select the right metric based on the problem at hand. Classification, regression, and clustering tasks each require different metrics to assess performance. The chosen metric should align with the project’s goals, whether that’s minimizing errors, maximizing classification accuracy, or optimizing clustering results.

### Metrics for Classification Tasks 
* The **confusion matrix** is a table that provides a detailed breakdown of a classification model’s predictions. It shows how many instances were correctly or incorrectly classified into each class. It contains the following elements:
    * **True Positives (TP)**: The number of positive instances correctly predicted as positive.
    * **True Negatives (TN)**: The number of negative instances correctly predicted as negative.
    * **False Positives (FP)**: The number of negative instances incorrectly predicted as positive.
    * **False Negatives (FN)**: The number of positive instances incorrectly predicted as negative.  
* **Accuracy**: Measures how often the model correctly predicts the class. It is the ratio of correctly predicted instances to the total instances.
* **Precision**: The proportion of true positive predictions out of all the positive predictions made by the model. It is a measure for how well the model avoids false positives.  
* **Recall (Sensitivity)**: The proportion of true positive predictions out of all the actual positives. It measures how well the model identifies all relevant instances.  
* **F1 Score**: The harmonic mean of precision and recall, providing a balance between the two. It is especially useful when you want a balance between precision and recall.  
* **AUC-ROC Curve**: The Area Under the Curve of the Receiver Operating Characteristics curve shows the model’s ability to discriminate between classes. 
* **AUPRC**: The Area Under the Precision-Recall Curve measures the model’s ability to correctly classify positive instances and is especially useful for imbalanced datasets.


### Metrics for Regression Tasks 
* **Mean Absolute Error (MAE)**: Measures the average magnitude of errors between predicted values and actual values. It gives an idea of how far off the predictions are, without considering the direction of errors.
* **Mean Squared Error (MSE)**: Measures the average squared difference between predicted and actual values. It penalizes larger errors more than smaller ones, giving a greater weight to large deviations.
* **Root Mean Squared Error (RMSE)**: The square root of MSE, which provides an error metric in the same unit as the predicted values, making it more interpretable.

### Metrics for Clustering Tasks 
* **Silhouette Score**: Measures how similar each data point is to its own cluster compared to other clusters. A higher score indicates better-defined clusters.
* **Davies-Bouldin Index**: Calculates the average similarity between each cluster and the one that is most similar to it. Lower values indicate better clustering results.
* **Adjusted Rand Index (ARI)**: Compares the clustering to a ground truth, accounting for chance groupings.

## Bias-Variance Tradeoff 
The bias-variance tradeoff is a core concept in machine learning that involves balancing model complexity and performance. **Bias** refers to errors introduced by overly simplistic models that fail to capture the underlying patterns in the data. This  leads to **underfitting**, where the model performs poorly on both training and test data. On the other hand, **variance** refers to errors introduced by overly complex models that are too sensitive to fluctuations or noise in the data. This can result in **overfitting**, where the model performs well on the training data but poorly on unseen test data. The goal is to find the right balance by capturing the true patterns in the data without overreacting to noise.