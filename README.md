# Introduction

This Github repo contains code and data for creating a PDF report that consists of a table of descriptive statistics and a mosaic plot, in order to better understand physical attack severity in school bullying. The original dataset is the Global School-Based Student Health Survey (GSHS) (<https://www.kaggle.com/datasets/leomartinelli/bullying-in-schools>) that contains school-based survey data from Argentina in 2018 with 56,981 student participants.

# Instructions for Synchronizing Package Repo

After forking my repo and opening the clone of my repo in your local desktop, 
use `setwd` and `getwd` to confirm that your project directory is your working 
directory. Then, type "make install" in the terminal to synchronize the package repo.

# Repo Organizational Structure

* The `raw_data/` folder contains the original dataset CSV file.
* The `cleaned_data/` folder contains the cleaned dataset CSV file.
* The `code/` folder contains R scripts for cleaning data, creating a descriptive statistics table, creating a mosaic plot, and rendering an R Markdown file to create a PDF report.
* The `outputs/` folder contains the descriptive statistics table and mosaic plot.
* The `report.Rmd` file contains instructions for compiling the outputs together in a well-formatted PDF report.
* The `Makefile` contains instructions for making the final PDF report.
* The `report.pdf` file is the final PDF report.

# Code Description

`code/01_clean_data.R`
- read raw data from `raw_data/` folder
- save clean data in `cleaned_data/` folder

`code/02_descriptive_table.R`
- read clean data from `cleaned_data/` folder
- save table 1 in `outputs/` folder

`code/03_mosaic_plot.R`
- read clean data from `cleaned_data/` folder
- save mosaic plot in `outputs/` folder

`code/04_render_report.R`
- render `report.Rmd` 
- save compiled report in main project directory

`report.Rmd`
- read data, tables, and figure from respective locations
- display results for production report