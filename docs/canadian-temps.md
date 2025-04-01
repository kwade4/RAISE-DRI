---
title: Canadian Temperatures Case Study   
layout: default 
parent: Case Studies
nav_order: 10
---

# Predicting Temperatures in Major Canadian Cities 

Understanding temperature trends is essential for studying climate change, urban planning, and environmental policies. In this case study, we explore temperature predictions for Canadian cities using data from the Berkeley Earth Surface Temperature Dataset.

**About the Dataset**  
The **Berkeley Earth Surface Temperature Dataset** is a widely used climate dataset that compiles historical temperature records from weather stations worldwide. It provides long-term temperature trends and is frequently used in climate research to analyze regional and global temperature changes. By leveraging this dataset, we can study how temperatures in Canadian cities have evolved over time and build predictive models based on historical patterns.

**What You Will Learn**
This notebook serves as both an introduction to data visualization and a practical demonstration of regression modeling in machine learning. Specifically, it will cover:
* Data exploration and visualization using Python libraries such as `matplotlib` and `seaborn` to understand trends and distributions.
* Regression modeling to predict temperatures based on historical data, using a simple machine learning model.
* Basic model evaluation to assess the performance of our predictions.

By the end of this case study, you will have a foundational understanding of how to work with climate data, visualize key insights, and apply machine learning techniques to a real-world regression problem.

## Instructions 

<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;">
  💡 <strong>Tip:</strong> Download the case study files here:  
  <a href="https://github.com/kwade4/RAISE-DRI/blob/main/workshop_examples/canada-temperatures/canada_temperatures.ipynb" target="_blank">
    RAISE-DRI MNIST Case Study 
  </a>
</div>

1. Go to [Google Colab](https://colab.research.google.com/). 
2. Click **New Notebook**.
3. Go to **File** then upload the Jupyter notebook (`canada_temperatures.ipynb`). 
4. Once the notebook is loaded, click the **Connect** button in the top right corner. Then press the **down arrow** beside it and change the runtime type to **T4 GPU**. 
5. You can now modify and execute the code cells by clicking **Shift + Enter** or clicking the **Run** button in each cell. 

## Case Study Overview

🔗 [View Notebook using NBViewer](https://nbviewer.org/github/kwade4/RAISE-DRI/blob/main/workshop_examples/canada-temperatures/canada_temperatures.ipynb)

<iframe src="https://nbviewer.org/github/kwade4/RAISE-DRI/blob/main/workshop_examples/canada-temperatures/canada_temperatures.ipynb" width="150%" height="1000px"></iframe>

## Questions to Consider
* How would other machine learning models perform? Support Vector Machine do?
* How does the performance change when you use other evaluation metrics?
* How does the model perform when we use a 70-30 train-test split? 