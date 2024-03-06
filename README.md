## Introduction

This Github repo contains code and data for creating a PDF report that consists of a table of descriptive statistics and a mosaic plot, in order to better understand physical attack severity in school bullying. The original dataset is the Global School-Based Student Health Survey (GSHS) (<https://www.kaggle.com/datasets/leomartinelli/bullying-in-schools>) that contains school-based survey data from Argentina in 2018 with 56,981 student participants.

The final report is created through a Makefile that has specific rules for creating the components of the report. It involves rendering the R Markdown file (which contains the report's text and reads in the data, the table of descriptive statistics, and the mosaic plot) into a PDF.  

## Repo Organizational Structure
* The `raw_data/` folder contains the original dataset CSV file.
* The `cleaned_data/` folder contains the cleaned dataset CSV file.
* The `code/` folder contains R scripts for cleaning data, creating a descriptive statistics table, creating a mosaic plot, and rendering an R Markdown file to create a PDF report.
* The `outputs/` folder contains the descriptive statistics table and mosaic plot.
* The `report.Rmd` file contains instructions for compiling the outputs together in a well-formatted PDF report.
* The `Makefile` contains instructions for making the final PDF report.
* The `report.pdf` file is the final PDF report.

## Code Description

`code/01_clean_data.R`
* Read raw data from `raw_data/` folder
* Save clean data in `cleaned_data/` folder

`code/02_descriptive_table.R`
* Read clean data from `cleaned_data/` folder
* Save descriptive table in `outputs/` folder

`code/03_mosaic_plot.R`
* Read clean data from `cleaned_data/` folder
* Save mosaic plot in `outputs/` folder

`code/04_render_report.R`
* Render `report.Rmd` 
* Save compiled report in main project directory

`report.Rmd`
* Read data, tables, and figure from respective locations
* Display results for production report
