# INFO-550 Data Science Toolkit Coursework

Hi! For assignment 4, I analyzed a data file from an particulate matter sensor (units 91) to see if the aerosol optical depth wavelength channels are aligned after the unit was serviced. 

The data file is in the data folder, the R script to generate the figure is in the R folder, and the Rmd script that generates the final report is in the Rmd folder. 

Renv was used to create a reproducible environment. Please use the line below to restore the R environment used to run the scripts and install the required packages:

```
renv::restore()
```

A makefile is in the main project folder which is able to generate the report without having to run the scripts separately on your own. Type 'make' in the terminal to generate the output file called Report.html output with the results.

```
make
```
