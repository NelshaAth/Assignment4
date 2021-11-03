Report: Rmd/Report.Rmd figs/Wavength_Comparison.png
	Rscript -e "rmarkdown::render('Rmd/Report.Rmd')"

figs/Wavength_Comparison.png: R/Air_Pollution_Figure.R Data/Unit_91_Data.csv
	Rscript R/Air_Pollution_Figure.R

.PHONY: Report
