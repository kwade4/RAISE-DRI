---
title: MNIST Example Using Google Colab  
layout: default 
parent: Case Studies
nav_order: 9
---

# Using Google Colab and AI to Classify Handwritten Digits 

This case study explores the **MNIST dataset**, a benchmark dataset in machine learning and computer vision. MNIST consists of 70,000 grayscale images of handwritten digits (0-9), with 60,000 training examples and 10,000 test examples, each stored as a 28×28 pixel image. Originally introduced by Yann LeCun, Corinna Cortes, and Christopher Burges in the 1990s, MNIST has played a foundational role in the development of neural networks and pattern recognition.

In this case study, we train a **convolutional neural network** (CNN) on MNIST to demonstrate how deep learning models can automatically extract meaningful features from images. CNNs are particularly effective for image classification tasks because they leverage spatial hierarchies of features, reducing the need for manual feature engineering. By working through this example, participants will gain hands-on experience with deep learning techniques and understand the importance of structured model training for real-world applications.

## Instructions 

<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;">
  💡 <strong>Tip:</strong> Download the case study files here:  
  <a href="https://github.com/kwade4/RAISE-DRI/blob/main/workshop_examples/mnist/mnist_classification.ipynb" target="_blank">
    RAISE-DRI MNIST Case Study 
  </a>
</div>

1. Go to [Google Colab](https://colab.research.google.com/). 
2. Click **New Notebook**.
3. Go to **File** then upload the Jupyter notebook (`mnist_classification.ipynb`). 
4. Once the notebook is loaded, click the **Connect** button in the top right corner. Then press the **down arrow** beside it and change the runtime type to **T4 GPU**. 
5. You can now modify and execute the code cells by clicking **Shift + Enter** or clicking the **Run** button in each cell. 


## Case Study Overview 

🔗 [View Notebook using NBViewer](https://nbviewer.org/github/kwade4/RAISE-DRI/blob/main/workshop_examples/mnist/mnist_classification.ipynb)

<iframe src="https://nbviewer.org/github/kwade4/RAISE-DRI/blob/main/workshop_examples/mnist/mnist_classification.ipynb" width="125%" height="750px"></iframe>

## Questions to Consider 
* What happens when you change the `learning_rate`?
* What happens when you change the `batch` size?
* What happens when you change the number of `epochs`?
* What happens if you add an extra hidden layer?
* What happens if you remove a hidden layer?
* Challenge: try to out other neural network architectures!


## Comparing Google Colab and the Alliance’s HPC Resources

When working with deep learning and large-scale computations, selecting the right computing platform is crucial. This section compares Google Colab with the Digital Research Alliance of Canada’s high-performance computing (HPC) resources, highlighting their strengths and limitations.

| Feature               | Google Colab | The Alliance's HPC Resources |
|-----------------------|-------------|------------------------|
| **Ease of Access**    | Accessible via a browser, no setup required | Requires SSH access and job scheduling (e.g., Slurm) |
| **Hardware Availability** | Provides free GPUs (e.g., Tesla T4, K80, or P100, depending on availability) | Access to high-performance GPUs (A100, V100) and large CPU clusters |
| **Compute Time Limits** | Free tier limits sessions to a few hours; Colab Pro extends time but still limited | Jobs can run for days or even a week, depending on allocation and queue policies |
| **Performance for Small Tasks** | Faster for quick experiments and prototyping | May have queue times, making it slower for small tasks |
| **Scalability** | Limited to a single GPU and moderate RAM | Scales across multiple GPUs and large memory nodes |
| **Storage & Persistence** | Temporary storage; files are deleted when the session ends unless saved externally | Permanent storage options and large scratch space |
| **Cost** | Very limited resources are offered for free. Colab Pro offers paid options for better resources, but it is very expensive. | Free for any registered user at an academic institution in Canada  |


**Choosing the Right Tool**  
✅ Use **Google Colab** (or your personal computer) if you need a quick, interactive environment for prototyping, debugging, or running small-scale experiments. It works best for tasks that can complete within a few hours and do not require large datasets or extensive compute power.

✅ Use the **Alliance’s HPC resources** for longer-running tasks, large-scale model training, and high-performance computing needs. HPC environments are best suited for deep learning models that require multiple GPUs, distributed training, or extensive compute power.
 
