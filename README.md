# INFO-550 Data Science Toolkit Coursework

Hi! For the final assignment, I analyzed a data file from an particulate matter sensor (units 91) to see if the aerosol optical depth wavelength channels are aligned after the unit was serviced. 

The data file is in the data folder, the R script to generate the figure is in the R folder, and the Rmd script that generates the final report is in the Rmd folder. 

Renv was used to create a reproducible environment. Please use the line below to restore the R environment used to run the scripts and install the required packages:

```
renv::restore()
```

A makefile is in the main project folder which is able to generate the report without having to run the scripts separately on your own. Type 'make' in the terminal to generate the output file called Report.html output with the results.

```
make
```

## ASSIGNMENT 4
To download the Docker image of this project, pull the image:
```
docker pull nelshaath/info_550:latest
```
and then build the image
```
docker build -t info_550 .
```
Create a GUI to see output
```
docker run -e PASSWORD="SECRET123" -p 8787:8787 rocker/rstudio
```
and go to http://localhost:8787/ in your browser. 
	Username: rstudio
	Password: SECRET123
You will need to mount the directory to a local folder on your device. You must change the path to a folder on your device!!!
```
docker run -v /path/to/project/R:/info_550/Rmd -it info_550
```


