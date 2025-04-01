---
title: MNIST Example Using ARC Resources 
layout: default 
parent: Case Studies
nav_order: 8
---

# Using HPC and AI to Classifying Handwritten Digits 

This case study explores the **MNIST dataset**, a benchmark dataset in machine learning and computer vision. MNIST consists of 70,000 grayscale images of handwritten digits (0-9), with 60,000 training examples and 10,000 test examples, each stored as a 28×28 pixel image. Originally introduced by Yann LeCun, Corinna Cortes, and Christopher Burges in the 1990s, MNIST has played a foundational role in the development of neural networks and pattern recognition.

In this case study, we train a **convolutional neural network** (CNN) on MNIST to demonstrate how deep learning models can automatically extract meaningful features from images. CNNs are particularly effective for image classification tasks because they leverage spatial hierarchies of features, reducing the need for manual feature engineering. By working through this example, participants will gain hands-on experience with deep learning techniques and understand the importance of structured model training for real-world applications.

<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;">
  💡 <strong>Tip:</strong> Download the case study files here:  
  <a href="https://github.com/kwade4/RAISE-DRI/tree/main/workshop_examples/mnist/mnist" target="_blank">
    RAISE-DRI MNIST Case Study 
  </a>
</div>

## Instructions

1. Transfer the mnist files to any of the ARC cluster (`cedar`, `narval`, `beluga`, `graham`).

    On your computer, navigate to the mnist folder and open a terminal.
    
    Run the following command to transfer the files:
    ```console: 
    scp -r mnist USER@whichCLUSTER.alliancecan.ca:~/scratch
    ```
    * Replace  `USER` with your username. 
    * Replace `whichCLUSTER` with the name of one of the ARC clusters. 


2. Log in to the ARC cluster you selected before.
    ```console
    ssh USER@whichCLUSTER.alliancecan.ca
    ```
    * Replace `USER` with your username
    * Replace `whichCLUSTER` with the name the ARC cluster you used.


3. Navigate to the scratch directory.
    ```console
    cd scratch
    cd mnist
    ls
    ```


4. Edit the `submit_job.sh` script using `nano` (or any other editor). 
    * Fill in your email
    * Fill in your user group (if you are part of multiple groups). 


5. Submit the job script by running the command:
    ```console 
    sbatch submit_job.sh
    ```

    You may get an error about incorrect line endings. In this case, run the command:
    ```console 
    dos2unix submit_job.sh
    ```

    This will change the line endings to use Unix line endings.

6. Check the status of your job by running:
    ```console 
    sq
    ``` 
    * `PD` = pending
    * `R` = running

    Take note of your job ID, we will need this later to check the output.

7. Check the output of the job by running:
    ```console
    cat slurm-XXXX.out
    ```
    where `XXXX` is your job ID.

8. Congratulations! You trained a neural network on a supercomputer!

## Next Steps:
* Try using [Globus](https://docs.alliancecan.ca/wiki/Globus), to transfer your files instead. 
    
* Explore different [neural network architectures](https://pytorch.org/tutorials/beginner/basics/buildmodel_tutorial.html) 
* Explore more advanced AI and Big Data libraries such as
    * [Dask](https://docs.dask.org/en/stable/10-minutes-to-dask.html)
    * [Accelerate](https://huggingface.co/docs/accelerate/index)
* Learn about [Mixed Precision Training](https://pytorch.org/docs/stable/notes/amp_examples.html) to speed up AI computations 


