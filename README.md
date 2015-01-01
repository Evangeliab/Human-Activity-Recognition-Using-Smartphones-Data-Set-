# Human-Activity-Recognition-Using-Smartphones-Data-Set


The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 



## In this repo you will find the following:

   - an R script for performing the analysis (that ends up with averaged_dataset.txt file), called **run_analysis.R** (contains comments). 
   - a **code book** that describes the variables, the data, and any transformations or work that it's performed to clean up the data.
   - the actual **averaged_dataset.txt** output file.

## How to reproduce the **averaged_dataset** tidy data set given the raw data folder **UCI HAR Dataset**:

 1. Make sure that you saved the raw data folder "UCI HAR Dataset" and the run_analysis.R script in your working directory.
 2. Open Rstudio and select the run_analysis.R.
 3. Run the code of run_analysis.R, by clicking the **Run or Source** button. 
 4. When the process stops, the **averaged_dataset.txt** file will be saved in your working directory, and the **averaged_dataset** tidy data set will be appeared in your environment.
 
 - Also you can read the averaged_dataset.txt with: read.table("averaged_dataset.txt",header = T).
 