# Project README

## Dataset Cleaning Instructions

Before running any other files in this project, please make sure to run the `cleaning.R` file to perform the necessary data cleaning and preparation steps. This will ensure that the data is in the correct format and ready for analysis.

To clean the dataset, follow these steps:
1. Ensure that R is installed on your system.
2. Open the `cleaning.R` file in R or an integrated development environment (IDE) that supports R.
3. Run the script to execute the data cleaning process.
4. Once the cleaning process is complete, you can proceed to run other files or scripts for further analysis.

Note: It is important to run the `cleaning.R` file first to avoid any issues or inconsistencies in the data. The cleaned dataset will be used by other files in this project.

## File Descriptions

- `CPU_benchmark_v4.csv`: The csv file contains the dataset use for the project
- `cleaning.R`: This file contains the code for cleaning and preparing the dataset. This file must be run first (see Note)
- `hypothesis_4.x.R`: These files contains the code for each hypothesis
- `plots.R`: This file contains the code used to generating the plots in the report
- `check_price_normality_4.3.R`: This file contains the code that support part of the testing method in hypothesis 4.3
- `archive_unused`: This is the folder contains all the things that we've tried to work on before the final version, take a look if you have the time 
- `old_cleaning.R`: This is the older unkempt version of the cleaning.R, however, it contains many useful plots that gave us many insights before steps in the hypothesis testing.
- `README.md`: This file provides instructions and information about the project.

Please refer to the specific files for more details and comments within the code.

## Dependencies

The following dependencies are required to run the code in this project:
- R (version 4.2.3)
- "package:exactRankTests" 
- "package:coin"           
- "package:survival"      
- "package:mice"           
- "package:stats"          
- "package:graphics"      
- "package:grDevices"      
- "package:utils"          
- "package:datasets"      
- "package:methods"        
- "package:base"     

Please ensure that you have these dependencies installed before running the code. You can run the `requirement.R` to install the additional packages (exactRankTests, coin, survival, mice).

For any questions or issues, please contact khang.phungvinh@hcmut.edu.vn

Happy analyzing!
