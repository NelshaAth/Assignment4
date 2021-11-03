# INFO-550 Data Science Toolkit Coursework

Hi! For assignment 4, I analyzed a data file from an particulate matter sensor (units 91) to see if they were both fully functioning. 
To analyze the data you will need to have two R packages installed: tidyverse and lubridate. Both packages can be installed using R commands

```
installed_pkgs <- row.names(installed.packages())
pkgs <- c("tidyverse", "lubridate")
for(p in pkgs){
	if(!(p %in% install_pkgs)){
		install.packages(p)
	}
}
```

To run the script, from the project folder you can run:

```
Rscript -e "rmarkdown::render('Homework_3_Nelsha.Rmd')" 
```

This will hopefully create a file called Report.html output with the results.
