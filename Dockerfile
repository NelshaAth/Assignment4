FROM rocker/tidyverse

RUN mkdir /Final_Assignment

WORKDIR /Final_Assignment

COPY . /Final_Assignment/

COPY ./Report.Rmd/ /Final_Assignment/

ENV which_fig="Wavelength_Comparison"

RUN Rscript -e "install.packages('here')"

RUN Rscript -e "install.packages('rmarkdown')"

RUN chmod +x /Final_Assignment/R/*.R

RUN chmod +x /Final_Assignment/Rmd/*.Rmd

CMD make Report





