<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)"  srcset="https://user-images.githubusercontent.com/61744142/188621995-1d5aab71-9646-49dd-9187-760c79c2941f.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
    <img alt="ADEPT Logo" width="30%" src="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
  </picture>    
</p>

<h3 align="center">
  ADEPT Server
</h3>

<h4 align="center">
  Anomaly Detection, Explanation and Processing for Time Series
</h4>

<p align="center">
  <a href="#contents">Documentation</a> |
  <a href="https://github.com/ADEPT-ML/Utility">Utilities</a> |
  <a href="https://www.tu-dortmund.de/en/university/sustainability/">Sustainability at TU Dortmund</a>
</p>

<br/>
<p align="center">
    <a href="https://github.com/ADEPT-ML/Server/releases">
        <img src="https://img.shields.io/github/v/release/ADEPT-ML/Server?color=brightgreen&include_prereleases&label=ADEPT">
    </a>
    <a href="https://www.apache.org/licenses/LICENSE-2.0">
        <img src="https://img.shields.io/github/license/ADEPT-ML/Server?color=brightgreen">
    </a>
    <a href="https://github.com/ADEPT-ML/Server/issues">
        <img src="https://img.shields.io/github/issues/ADEPT-ML/Server?color=brightgreen">
    </a>
    <a href="https://github.com/ADEPT-ML/Server/commits">
    <img src="https://img.shields.io/github/last-commit/ADEPT-ML/Server">
    </a>
</p>
<br/>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)"  srcset="https://user-images.githubusercontent.com/47151705/212996965-77cc9b7b-c89e-4a78-a8a1-23e2f1662650.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/47151705/212996953-9a26beb6-d225-4c3a-9c5e-b8d1e29c4e4f.png">
    <img alt="ADEPT Screenshot" width="100%" src="https://user-images.githubusercontent.com/47151705/212996953-9a26beb6-d225-4c3a-9c5e-b8d1e29c4e4f.png">
  </picture>    
</p>


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
_Müller, B. T., et al. (2022). ADEPT: Anomaly Detection, Explanation, and
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
- __🐳__ __docker ready:__ all core components are docker ready, so you can start them right out of the box

## Core Technologies and Frameworks

| Technology                                             | Description                            | Usage                             |
|--------------------------------------------------------|----------------------------------------|-----------------------------------|
| [Docker](https://www.docker.com/)                      | Container virtualization               | Containerization of microservices |
| [FastAPI](https://github.com/tiangolo/fastapi)         | Framework for building APIs in Python  | API endpoints of the Backend      |
| [Uvicorn](https://github.com/encode/uvicorn)           | Web server implementation for Python   | Backend web server for the APIs   |
| [OpenAPI](https://www.openapis.org/)                   | Documentation standard for REST-APIs   | Documentation of the ADEPT API    |
| [TensorFlow](https://github.com/tensorflow/tensorflow) | Machine learning library               | Anomaly detection algorithms      |
| [Requests](https://github.com/psf/requests)            | Python library for HTTP-Requests       | Internal API requests             |
| [React](https://github.com/facebook/react/)            | JavaScript library for user interfaces | Realization of the Frontend       |
| [MUI](https://mui.com/)                                | React UI component library             | Material design UI components     |

## Quick start

To pull the repository and all of its submodules you will have to initialize and update with

```sh
# clone this repository first
git submodule init
git submodule update
```

Before you start ADEPT, you must create a top-level `data` folder containing 1) the building-xls-files and 2) the
temperature data. These files must be in the correct format, or you will have to change the import code in
the `Data-Management` service.

```
\-Server
    ├── Anomaly-Detection
    ├── Backend
    ├── data
    │   ├── building_data.xls
    │   └── metadata.csv
    ├── Data-Management
    ├── Explainability   
    ├── Feature-Engineering
    ├── Frontend
    ├── Preprocessing
    └── [...]
```

The complete system can be quickly bootstrapped with Docker:

```sh
# execute the script to boot all necessary components
sh ADEPT-Start.sh
```

Consider using an IDE for git if you want to contribute to the project.

### Services and port mappings

| Container-Name               | Image-Name                 | Ports                     |
|------------------------------|----------------------------|---------------------------|
| ADEPT-ML-Frontend            | server-react               | `0.0.0.0:80    ➜  80/tcp` |
| ADEPT-ML-Backend             | server-backend             | `0.0.0.0:8000  ➜  80/tcp` |
| ADEPT-ML-Data-Management     | server-data-management     | `0.0.0.0:8001  ➜  80/tcp` |
| ADEPT-ML-Preprocessing       | server-preprocessing       | `0.0.0.0:8002  ➜  80/tcp` |
| ADEPT-ML-Feature-Engineering | server-feature-engineering | `0.0.0.0:8003  ➜  80/tcp` |
| ADEPT-ML-Anomaly-Detection   | server-anomaly-detection   | `0.0.0.0:8004  ➜  80/tcp` |
| ADEPT-ML-Explainability      | server-explainability      | `0.0.0.0:8005  ➜  80/tcp` |

Information about the functionality of the individual services can be found in the sub-repos or is documented in the
code (pydoc, OpenAPI).

### OpenAPI

All endpoints are fully specified in OpenAPI. You can access Swagger via `/docs` - e.g. `localhost:8001/docs` for
the `Data-Management`.

![image](https://user-images.githubusercontent.com/47151705/212663361-bb5e571a-3c4b-4b11-84c2-9554f39be7a8.png)

## Adding functionality

You can use ADEPT to test innovative techniques by simply customizing the appropriate component of the framework.
For example, if you want to try a new ml model for the detection process, you can simply add the model under:

[▶ How to add new models or change detection-configuration](https://github.com/ADEPT-ML/Anomaly-Detection/blob/main/README.md#adding-functionality)

[▶ How to add explainability modules](https://github.com/ADEPT-ML/Explainability/blob/main/README.md#adding-functionality)

[▶ How to add new import-functionality (for other formats)](https://github.com/ADEPT-ML/Data-Management/blob/main/README.md#adding-functionality)

## Contributors

|**Benedikt Tobias Müller**|**Janis Büse**|**Marvin Ender**|
|:---:|:---:|:---:|
|[![Benedikt Tobias Müller](https://avatars.githubusercontent.com/u/61744142?v=4&s=128)](https://github.com/BenediktTobias) | [![Janis Büse](https://avatars.githubusercontent.com/u/47151705?v=4&s=128)](https://github.com/jbuese) | [![Marvin Ender](https://user-images.githubusercontent.com/47151705/204150923-50a2dc21-f995-4b13-8733-6ae33df84cb8.jpg)](https://github.com/mrvnndr) |

## License

Copyleft © ADEPT ML, TU Dortmund 2023
