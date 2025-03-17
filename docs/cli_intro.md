---
title: Command Line Essentials 
layout: default 
parent: Advanced Research Computing
nav_order: 4
---

# Introduction to the Command Line 

High-performance computing (HPC) systems are controlled through the command line. The command line is a text-based interface that allows users to interact with a computer by typing commands. Unlike graphical user interfaces (GUIs), which rely on icons and windows, the command line provides direct control over the system, making it a powerful tool for managing files, running programs, and automating tasks.

For new users, the command line may seem intimidating at first, but it offers many advantages, especially in HPC. It enables efficient navigation, file manipulation, and job submission on remote systems that lack a traditional desktop environment. 


## Getting Started with the Command Line 

Linux is the operating system commonly used in HPC systems, so it is essential for researchers to become familiar with basic Linux commands. The **command line interface (CLI)** in Linux offers a powerful way to interact with the system, manage files, and run complex computational tasks. Understanding fundamental commands will help you navigate, manipulate data, and efficiently utilize HPC resources for your research. In this guide, we’ll cover the basics to get you started with the Linux command line.

### 1. Opening the Terminal 
To begin using the command line, you need to open a terminal. You can do this by searching for `terminal` in your applications menu. 

### 2. Navigating the Command Line  
Once your terminal is open, you'll be able to start typing commands. Here are some essential navigation commands:  
* `pwd` (Print Working Directory): Displays your current directory (folder).  
  
    ```bash
    pwd 
    ```  

* `ls` (List): Lists the contents of the current directory.   
  
    ```bash 
    ls
    ```  
      
    `ls -a` shows hidden files.   
    `ls -l` displays detailed file information.

* `cd <directory>` (Change Directory): Changes your working directory to a specified folder.  
     
    ```bash 
    cd Documents
    ```  
      
    `cd ..` moves up one level in the directory structure.  
    `cd ~` moves to the `home` directory. 


### 3. Managing Files and Directories 
Here are some common commands to manage files and directories:   
* `mkdir <directory_name>`: Creates a new directory. 
  
    ```bash 
    mkdir my_folder
    ```  

* `touch <file_name>`: Creates a new empty file. 
  
    ```bash 
    touch myfile.txt
    ```  

* `rm <file_name>`: Deletes a file.    
  
    ```bash 
    rm myfile.txt
    ```  

* `cp <source_file> <destination_file>`: Copies a file or directory.  
  
    ```bash
    cp myfile.txt myfile_backup.txt
    ```  
  
* `mv <source> <destination>`: Moves or renames a file or directory.  
  
    ```bash
    mv myfile.txt new_location/
    ```  
    By default, this will move `myfile.txt` to the `new_location` folder. It is equivalent to:  

    ```bash
    mv myfile.txt new_location/myfile.txt
    ```  
    `rm -r <directory_name>` removes a directory and all of its contents. 


### 4. Viewing files
You can use the following commands to view and search the contents of files:

* `cat <file_name>`: Displays the contents of a file.  
      
    ```bash
    cat myfile.txt
    ```
      
* `less <file_name>`: Opens a file for scrolling.  
      
    ```bash
    less myfile.txt
    ```  

* `head <file_name>`: Displays the first 10 lines of a file.  
  
    ```bash
    head myfile.txt
    ```  

* `tail <file_name>`: Displays the last 10 lines of a file.  

    ```bash
    tail myfile.txt
    ```  

### 6. Editing files
You can edit files using text editors such as `vim`, `nano`, or `emacs`.  
 
```bash
nano myfile.txt
```

### 7. File permissions
Linux uses file permissions to control who can read, write, or execute files. Use the chmod command to change permissions:  

`chmod <permissions> <file_name>`: Changes the permissions of a file. For example:
```bash
chmod +x myscript.sh  
```  
This command makes the script file executable.

### 8. Using `help` and `man` pages 

* `man <command>`: Displays the manual for a command.  
  
    ```bash
    man ls
    ```
  
* `<command> --help`: Provides a brief description and options for a command.  

    ```bash
    ls --help
    ```  

### 9. Running programs and processes
You can run a program or script by typing its name:

`./<program_name>`: Runs an executable in the current directory.  

```bash
./myscript.sh
```  

## Logging in to an HPC cluster 
To access an HPC cluster, users typically log in via **SSH (Secure Shell)**:   

```
ssh username@cluster.address
```
  
Replace `username` with your HPC account name and `cluster.address` with the address of the system's login node. 

## Transferring files to and from remote systems 

### SCP (Secure Copy)
`scp <source> <destination>`  
  
The `scp` command is used to securely copy files or directories between a local (your personal computer) and a remote (HPC cluster) host, or between two remote hosts. It uses `SSH` for data transfer and provides a secure way to transfer files over the network.

**Copying a file from local to remote**  
```bash 
scp myfile.txt user@remote_host:/path/to/remote/directory/
```
  
* `myfile.txt`: The file you want to transfer from your local system.  
* `user@remote_host`: Replace `user` with your username on the remote system, and `remote_host` with the remote server's address (it could be an IP address or domain name).
* `/path/to/remote/directory/`: The directory on the remote server where the file will be placed.  

**Copying a file from remote to local**
```bash
scp user@remote_host:/path/to/remote/file.txt /path/to/local/directory/
```

**Copying a directory from local to remote**
```bash
scp -r my_directory/ user@remote_host:/path/to/remote/directory/
```  
  
The `-r` flag (stands for recursive) tells `scp` to copy the entire directory and all its contents.  
