# ADEPT ML Server

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)"  srcset="https://user-images.githubusercontent.com/61744142/188621995-1d5aab71-9646-49dd-9187-760c79c2941f.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
    <img alt="ADEPT Logo" width="30%" src="https://user-images.githubusercontent.com/61744142/188621988-a3d82a34-c2b3-4084-bae9-6b35fdf8ba9b.png">
  </picture>    
</p>

<p align="center">
  <a href="blank">Documentation</a> |
  <a href="https://www.tu-dortmund.de/en/university/sustainabilitiy/">Sustainabilitiy at TU Dortmund</a>
</p>

<h3 align="center">
  ADEPT ML
</h3>

<p align="center">
  Anomaly Detection, Explanation and Processing for Time Series with a Focus on Energy Consumption Data
</p>

<br/>

![GitHub](https://img.shields.io/badge/ADEPT%20ML-v0.1.0-grün)
![GitHub](https://img.shields.io/github/license/adept-ml/server)
<br/>

![ADEPT](./adept_screenshot.png)

<!-- START TABLE OF CONTENT -->
## Table of Contents

- [Whats is ADEPT](#What-is-ADEPT?)
- [Features](#features)
- [Technologies and Frameworks used](#technologies-and-frameworks-used)
- [Quick start](#quick-start)
- [Contributors](#contributors)
<!-- - [Documentation](tbd) -->

<!-- END TABLE OF CONTENT -->

## What is ADEPT?

ADEPT is a framework for detecting anomalies in energy consumption data. As such, it includes interfaces for processing user time series data and can be used to interactively visualize explanatory information about anomalies. ADEPT features several shallow and deep machine learning algorithms for anomaly detection and explanation.

## Features

tbd

## Technologies and Frameworks used

|Technology|Description|
|----------|-------------|
tbd

## Quick start

The complete system can be quickly bootstrapped with Docker:
```sh
# execute the script to boot all necessary components
sh ADEPT-Start.bat
```
Some system settings might need to be tweaked. For example you will need to remove the `-` when you are already using docker with Compose V2.

To pull the repository and all of its submodules you will have to initialize and update with 
```sh
git submodule init
git submodule update
````
Consider using an IDE for git if you want to contribute to the project.

## Contributors

|**Benedikt Tobias Müller**|**Janis Büse**|
|:---:|:---:|
|[![Benedikt Tobias Müller](https://avatars.githubusercontent.com/u/61744142?v=4&s=128)](https://github.com/BenediktTobias) | [![Janis Büse](https://avatars.githubusercontent.com/u/47151705?v=4&s=128)](https://github.com/jbuese) 

<!-- replace with 
<a href="https://github.com/adept-ml/server/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=adept-ml/server" />
</a>
-->

## License

Copyright © ADEPT ML, TU Dortmund 2022