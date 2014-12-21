## Human-Activity-Recognition-Using-Smartphones-Data-Set
======================================================

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 



# In this repo you will find the following:

   - an R script for performing the analysis, called **run_analysis.R** found [here] (https://github.com/Evangeliab/Human-Activity-Recognition-Using-Smartphones-Data-Set-/blob/master/run_analysis.R) . 
   - a **code book** that describes the variables, the data, and any transformations or work that you performed to clean up the data.It's found [here] () .
   

# How to reproduce the **averaged_data** tidy data set given the raw data folder **UCI HAR Dataset** :
=====================================================================================================
 1. Make sure that you saved the raw data folder "UCI HAR Dataset" and the run_analysis.R script in your working directory.
 2. Open Rstudio and open run_analysis.R by clicking in the File section.
 3. Run the code of run_analysis.R, by clicking **Ctrl+A** to select the whole code, and then the **Run** button. 
 4. When the process stops, **it won't print anything in your console as I didn't put print in the end of the code** , becauce the dimension of the data is bid. So you will get a number of data names in your environment up-right. The only one that you should be interested is called **averaged_data**.
 5. If you want to print in your console a part of this data frame, you can by subsetting e.g: averaged_data[1:6, 1:10] 