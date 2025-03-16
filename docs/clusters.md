---
title: Available Services 
layout: default 
parent: Advanced Research Computing
nav_order: 2
---
# Services Available through ARC 

Canada’s Advanced Research Computing (ARC) resources feature six national HPC clusters and cloud services. The Alliance offers free computing power, cloud access, and data storage to researchers at Canadian institutions.

## HPC Clusters 
Researchers can access the following systems:   
🌿 **[Arbutus](https://docs.alliancecan.ca/wiki/Arbutus)**: University of Victoria   
🐳 **[Béluga](https://docs.alliancecan.ca/wiki/B%C3%A9luga/en)**: Montreal's École de technologie supérieure   
🌲 **[Cedar](https://docs.alliancecan.ca/wiki/Cedar)**: Simon Fraser University   
💧 **[Graham](https://docs.alliancecan.ca/wiki/Graham)**: University of Waterloo  
🦭 **[Narval](https://docs.alliancecan.ca/wiki/Narval/en)**:  Montreal's École de technologie supérieure  
🌊 **[Niagara](https://docs.alliancecan.ca/wiki/Niagara)**: University of Toronto 

Arbutus ☁️ is a cloud-based platform that allows researchers to launch and customize virtual machines to suit their specific computing needs. 

Béluga, Cedar, Narval and Graham are general-purpose HPC clusters. They offer a mix of compute nodes, including high-memory nodes and GPU-accelerated options, and are suitable for a wide range of research applications. 

Niagara is a specialized cluster designed for large-scale parallel computing (more than 1000 jobs). 

<div style="background-color: #eaf3ea; border-left: 5px solid #8FBC8F; padding: 10px; color: black;"> ⚠️ <strong>Important:</strong> Check the current status of ARC resources <a href="https://status.alliancecan.ca/" target="_blank">here</a>. </div>


## Cloud Computing  
Cloud services offer researchers customizable virtual machines that enable them to:   
✅ Build portals and platforms  
✅ Store and analyze data  
✅ Collaborate with colleagues 


## Storage Options 
The Alliance provides high-speed temporary and long-term data storage options. As a shared resource, users are expected to manage storage responsibly.

🏠 `\HOME`: The home directory is best for storing source code, small parameter files, and job submission scripts. It has a smaller quota and isn't optimized for reading or writing large files, so it's not ideal for heavy data operations.

📁 `\PROJECT`: The project space is designed for sharing data within a research group. It offers a larger quota and is linked to a PI's account. It is suitable for storing relatively static data that doesn't change frequently. Avoid using project space for data that needs frequent updates or changes, as it can overload the backup system.

🧹 `\SCRATCH`: Scratch space is perfect for intensive read/write operations on large files (>100 MB). It is meant for temporary files, such as checkpoint files and job outputs. Important data should not be stored here, as it is not backed up, and older files are subject to purging. `\SCRATCH` is intended for files that can easily be recreated.

| **Storage Type** | **Best For**                             | **Quota**                       | **Performance**                      | **Backup**                 | **Data Retention**         |
|------------------|------------------------------------------|---------------------------------|--------------------------------------|----------------------------|----------------------------|
| **Home**      | Source code, small files, job scripts   | Smaller quota                   | Not optimized for large files        | Limited backup             | Persistent                  |
| **Project**   | Sharing data within research groups     | Larger quota                    | Optimized for data sharing           | Backed up periodically      | Static, less frequent changes|
| **Scratch**   | Temporary files, large read/write tasks | Large, temporary quota          | High performance for large files     | Not backed up               | Purged over time            |


### Default Storage Quotas 

To ensure there’s enough space for everyone, there are quotas and policies in place for backups and managing the filesystem. Users get access to `/HOME` and `/SCRATCH` spaces, and each group is allocated 1 TB of project space.


| Cluster    | Home Space                          | Scratch Space                     | Project Space                       | Nearline Space                       |
|------------|-------------------------------------|-----------------------------------|-------------------------------------|--------------------------------------|
| **Cedar**🌲 | 50 GB & 500K files per user         | 20 TB & 1M files per user         | 1 TB & 500K files per group         | 2 TB & 5000 files per group          |
| **Graham** 💧 | 50 GB & 500K files per user         | 20 TB & 1M files per user         | 1 TB & 500K files per group         | 2 TB & 5000 files per group          |
| **Béluga** 🐳 | 50 GB & 500K files per user         | 20 TB & 1M files per user         | 1 TB & 500K files per group         | 1 TB & 500K files per group          |
| **Narval** 🦭 | 50 GB & 500K files per user         | 20 TB & 1M files per user         | 1 TB & 500K files per group         | 1 TB & 500K files per group          |
| **Niagara** 🌊| 100 GB per user                     | Up to 25 TB per user (group-based allocation) | By group allocation (RRG or RPP)    | 10 TB per user                       |


### Exanding Storage
If additional storage is required, users can request small increases through the **Rapid Access Service**, while larger allocations are available via the **Resource Allocation Competitions**.

For more information on policies, quotas, and how to request more storage, visit the links below: 
* [Policies and Quotas](https://docs.alliancecan.ca/wiki/Storage_and_file_management#Storage_types)
* [Using `nearline`](https://docs.alliancecan.ca/wiki/Using_nearline_storage)
* [Rapid Access Service](https://alliancecan.ca/en/services/advanced-research-computing/accessing-resources/rapid-access-service)
* [Resource Allocation Competitions](https://alliancecan.ca/en/services/advanced-research-computing/accessing-resources/resource-allocation-competition)