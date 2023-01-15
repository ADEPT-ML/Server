# ADEPT ML Server

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)"  srcset="https://user-images.githubusercontent.com/61744142/188621995-1d5aab71-9646-49dd-9187-760c79c2941f.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
    <img alt="ADEPT Logo" width="30%" src="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
  </picture>    
</p>

<p align="center">
  <a href="#contents">Documentation</a> |
  <a href="https://www.tu-dortmund.de/en/university/sustainabilitiy/">Sustainabilitiy at TU Dortmund</a>
</p>

<h3 align="center">
  ADEPT ML
</h3>

<p align="center">
  Anomaly Detection, Explanation and Processing for Time Series with a Focus on Energy Consumption Data
</p>

<br/>

![Version](https://img.shields.io/github/v/release/ADEPT-ML/Server?color=green&include_prereleases)
![License](https://img.shields.io/github/license/adept-ml/server)
<br/>

![ADEPT](https://user-images.githubusercontent.com/61744142/201544395-ff21af09-a4c1-4afa-bf0f-b3477fb9904d.png)

<!-- START TABLE OF CONTENT -->
## Contents

- [What is ADEPT](#What-is-ADEPT)
- [Features](#features)
- [Technologies and Frameworks used](#technologies-and-frameworks-used)
- [Quick start](#quick-start)
- [Adding functionality](#adding-functionality)
- [Contributors](#contributors)

<!-- END TABLE OF CONTENT -->

## What is ADEPT?

ADEPT is a framework for detecting anomalies in energy consumption data. As such, it includes interfaces for 
processing user time series data and can be used to interactively visualize explanatory information about anomalies. 
ADEPT features several shallow and deep machine learning algorithms for anomaly detection and explanation.

The ADEPT framework was presented at ECML PKDD 2022 in Grenoble, France, as a contribution to the Demo Track.
_Müller, B. T., et. al. (2022). ADEPT: Anomaly Detection, Explanation, and
Processing for Time Series with a Focus on Energy Consumption Data._

The framework was designed and implemented as part of a project group at the Faculty of Computer Science at the 
Technical University of Dortmund. Originally, it was intended to support the university's facility management in 
finding anomalous energy consumption and make informed decisions on how to intervene.

Note: Because the university's energy consumption data is under strict NDA, we are unable to provide the original data.
We also cannot provide trained models that could be used to make assumptions about the energy consumption.
We plan to add synthetic data so that interested parties can reproduce our results.

## Features

- __🕵️__ __anomaly detection:__ visualise energy consumption and detect anomalies
- __🤖__ __on-demand machine learning:__ models allow for on-demand training on the selected data
- __⚙️__ __configurable ML:__ easily fine-tune selections, thresholds and hyperparameters for detections
- __📈__ __explainability:__ anomalies are explained with normal-patterns and feature-attributions
- __💻__ __client application:__ an easy-to-use web application for non-specialist users
- __📚__ __OpenAPI documentation:__ all APIs are fully specified in OpenAPI and easy to use for further development
- __🖥️__ __responsive design:__ fully responsive client application for usage on any device
- __🏛️__ __microservice architecture:__ easy cloud-ready scaling and development on SOLID-principles
- __🐳__ __docker ready:__ microservices and core components are docker ready, so you can start them right out of the box

## Technologies and Frameworks used

|Technology|Description|
|----------|-------------|
tbd

## Quick start

To pull the repository and all of its submodules you will have to initialize and update with 
```sh
git submodule init
git submodule update
```
Before you start ADEPT, you must create a top-level `data` folder containing 1) the building-xls-files and 2) the 
temperature data. These files must be in the correct format, or you will have to change some of the import code at 
the `Data-Management` service. 

```
\-Server
    |-Anomaly-Detection
    |-Backend
    |-data
        -building_data.xls
        -metdata.csv
    |-Data-Management
    |-Explainability   
    |-Feature-Engineering
    |-Frontend
    |-Preprocessing
    |-[...]
```

The complete system can be quickly bootstrapped with Docker:
```sh
# execute the script to boot all necessary components
sh ADEPT-Start.sh
```

Consider using an IDE for git if you want to contribute to the project.

## Adding functionality

You can use ADEPT to test innovative techniques by simply customizing the appropriate component of the framework.
For example, if you want to try a new ml model for the detection process, you can simply add the model under:

tbd

## Contributors

|**Benedikt Tobias Müller**|**Janis Büse**|**Marvin Ender**|
|:---:|:---:|:---:|
|[![Benedikt Tobias Müller](https://avatars.githubusercontent.com/u/61744142?v=4&s=128)](https://github.com/BenediktTobias) | [![Janis Büse](https://avatars.githubusercontent.com/u/47151705?v=4&s=128)](https://github.com/jbuese) | [![Marvin Ender](https://user-images.githubusercontent.com/47151705/204150923-50a2dc21-f995-4b13-8733-6ae33df84cb8.jpg)](https://github.com/mrvnndr) 

<!-- replace with 
<a href="https://github.com/adept-ml/server/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=adept-ml/server" />
</a>
-->

## License

Copyleft © ADEPT ML, TU Dortmund 2022
