# Human-Activity-Recognition-Using-Smartphones-Data-Set


The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 



## In this repo you will find the following:

   - an R script for performing the analysis (that ends up with averaged_dataset tidy data), called **run_analysis.R** (contains comments) found [here] (https://github.com/Evangeliab/Human-Activity-Recognition-Using-Smartphones-Data-Set-/blob/master/run_analysis.R) . 
   - a **code book** that describes the variables, the data, and any transformations or work that it's performed to clean up the data.It's found [here] (https://github.com/Evangeliab/Human-Activity-Recognition-Using-Smartphones-Data-Set-/blob/master/CodeBook.md) .
   

## How to reproduce the **averaged_dataset** tidy data set given the raw data folder **UCI HAR Dataset**:

 1. Make sure that you saved the raw data folder "UCI HAR Dataset" and the run_analysis.R script in your working directory.
 2. Open Rstudio and open run_analysis.R by clicking in the File section.
 3. Run the code of run_analysis.R, by clicking **Ctrl+A** to select the whole code, and then the **Run or Source** button. 
 4. When the process stops, **it won't print anything to your console as I didn't include the print function in the end of the code**, becauce the dimension of the data is big. So you will get a number of data names in your environment up-right. The only one that you should be interested is called **averaged_data**.
 5. If you want to print to your console a part of this data frame, you can by subsetting e.g: averaged_dataset[1:6, 1:10] 