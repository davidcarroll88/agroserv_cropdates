# Agroserv Crop Date Data

The data in this repository were gathered by the *Instituto Mato-Grossense de Economia Agropecuária* based in Cuiabá, Mato Grosso, Brazil. The data show planting and harvest reports taken on a weekly basis during planting seasons from 2008-2009 until the present. Crop data for soy and second crop maize in Mato Grosso state are included in the analysis. Data were downloaded from http://www.imea.com.br/imea-site/relatorios-mercado in individual PDF files. The files were then read into the R statistical package using RStudio, then cleaned, treated, and merged into a two coposite datasets for municipal and regional-level data, repsectively. Municipal data were collected between the 2008-2009 and 2014-2015 years, while regional level data were collected starting in the 2009-2010 year and continuing to the present. Area of hectares planted and harvested for each crop are reported in the dataset, as are proportion of overall cropland area planted from a week-to-week basis, reported in percentages. 

## Getting Started

The R code for reading, cleaning, and merging the data can be found in the https://github.com/davidcarroll88/agroserv_cropdates/tree/master/code folder. Raw data files downloaded from the IMEA website can be found in the https://github.com/davidcarroll88/agroserv_cropdates/tree/master/raw_data folder. Cleaned data in comma-delimited (CSV) format can be found in the https://github.com/davidcarroll88/agroserv_cropdates/tree/master/cleaned_data file.

### Prerequisites

R version 3.5.1 (2018-07-02) should be downloaded to run the code found in the **Code** folder of this repository and to ensure that all commands run properly. RStudio may also be used to enable conceptualization of data analysis. 

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
