# Agroserv Crop Date Data

The data in this repository were gathered by the *Instituto Mato-Grossense de Economia Agropecuária* based in Cuiabá, Mato Grosso, Brazil. The data show planting and harvest reports taken on a weekly basis during planting seasons from 2008-2009 until the present. Crop data for soy and second crop maize in Mato Grosso state are included in the analysis. Data were downloaded from the [IMEA_Relatorios_Mercado](http://www.imea.com.br/imea-site/relatorios-mercado) site in individual PDF files. The files were then read into the R statistical package using RStudio, then cleaned, treated, and merged into a two coposite datasets for municipal and regional-level data, repsectively. Municipal data were collected between the 2008-2009 and 2014-2015 years, while regional level data were collected starting in the 2009-2010 year and continuing to the present. Area of hectares planted and harvested for each crop are reported in the dataset, as are proportion of overall cropland area planted from a week-to-week basis, reported in percentages. 

## Getting Started

The R code for reading, cleaning, and merging the data can be found in the [Code](https://github.com/davidcarroll88/agroserv_cropdates/tree/master/code) folder. Raw data files downloaded from the IMEA website can be found in the [Raw_Data](https://github.com/davidcarroll88/agroserv_cropdates/tree/master/raw_data) folder. Cleaned data in comma-delimited (CSV) format can be found in the [Cleaned_Data](https://github.com/davidcarroll88/agroserv_cropdates/tree/master/cleaned_data) file.

### Prerequisites

R version 3.5.1 (2018-07-02) should be downloaded to run the code found in the **Code** folder of this repository and to ensure that all commands run properly. RStudio may also be used to enable conceptualization of data analysis. 

## Code Book

Variable Name | Units | Description
------------ | ------------- | -------------
ID | Integers | Numerical identifier for municipalities/composite regions
Municipality | Character | Name of municipality or composite region
spl_DOY_yyyy | Soy Planting Date | percent of soy planted, days after August 1st of year t-1, year
sha_DOY_yyyy | Soy Harvest Date | percent of soy harvested, days after August 1st of year t-1, year
mpl_DOY_yyyy | Maize Planting Date | percent maize planted, days after August 1st of year t-1, year
mha_DOY_yyyy | Maize Harvest Date |  percent maize harvested, days after August 1st of year t-1, year
spl_area_yyyy | Soy Planting Area | hectares of soy planted, year 
sha_area_yyyy | Soy Harvesting Area | hectares of soy harvested, year 
mpl_area_yyyy | Maize Planting Area | hectares of maize planted, year 
mha_area_yyyy | Maize Harvesting Area | hectares of maize harvested, year 

## Built With

* [R](https://cran.r-project.org/bin/windows/base/) - Statistical package used for data cleaning and treatment
* [RStudio](https://www.rstudio.com/) - Integrated Development Environment (IDE) for R statistical package

## Authors

* **Alex Carroll** - *Initial work* - [davidcarroll88](https://github.com/davidcarroll88)
* **Avery Cohn** - *Consultation and review* - [averycohn](https://github.com/averycohn)
* **Minghui Zhang** - *Consultation and review, coding* - [minghui-zhang](https://github.com/minghui-zhang)
