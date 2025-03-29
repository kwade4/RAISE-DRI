---
title: Getting Started with ARC 
layout: default 
parent: Advanced Research Computing
nav_order: 5
---

# Getting Started with ARC 
{: .no_toc }

1. TOC
{:toc}

## Connecting to an ARC cluster 
ARC systems are remote, meaning you must connect to them from your local machine. This is typically done using a secure shell (`SSH`) connection.

Before connecting, ensure you have:

* A terminal or SSH client installed (e.g., Terminal on macOS/Linux, PuTTY on Windows)  
* Your CCDB system username and password 

### Step-by-step Connection Guide 

1. **Open Your Terminal**: On macOS or Linux, open the `Terminal`. On Windows, use `Command Prompt`, `PowerShell`, or an SSH client like `PuTTY`.
2. **Connect to the ARC cluster**: To connect to the `Cedar` supercomputer, type the following command:  

    ```console
    ssh USERNAME@cedar.alliancecan.ca
    ```

    * Replace `USERNAME` with your CCDB username. 
    * To log into another ARC cluster, replace `cedar` with its name (`narval`, `beluga`, etc.)

3. **Enter your password**: If you are not using `SSH` key authentication, you will be prompted to enter your password. 

4. **Authenticate using MFA**: Follow the multi-factor authentication prompt (e.g.: approve the request on Duo).   


<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;">
  ⚠️ <strong>Important:</strong> Once you are logged in, you will be in the <code>HOME</code> directory. 
</div>  
    
Learn more about [ARC storage locations]({% link clusters.md %}). 



#### Trouble Shooting 
* If the `SSH` connection fails, ensure your internet connection is stable.
* Verify that your username and password are correct.
* If using `SSH keys`, confirm they are correctly configured.

### Transferring Data 

#### Using Command Line Tools 

####

#### Using Globus 
Globus is a fast, reliable, user-firendly way to transfer files securely. 
1. Go to the Alliance's [Globus Portal](https://globus.alliancecan.ca/). 

    In the **Use your existing organizational login** box, select **Digital Research Alliance of Canada**. 

    ![globus](assets/images/globus-login.png)

    Press **Continue**.

2. Log in using your **CCDB** username (not your email) and password. 

3. Open **File Manager** in the Globus portal. 



## Using Python 

## Software Available 