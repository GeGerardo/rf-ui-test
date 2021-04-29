# Job Application - Inspera

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Project created for a QA Automation job application at Inspera.

### Built With

* Robot Framework
* Selenium Webdriver
* RobotEyes

<!-- GETTING STARTED -->
## Getting Started
The automation script are divided by the following folders:
- base_image: Where the base image is saved to compare with the test results from the `CSS_Visual_Test.robot`
- keywords: Where we have the methods and Page Objects specifications.
- results: Where the `report.html` and the `visualReport.html` are saved.
- tests: Where the 3 different Test Suites are present.
- variables: Where general configuration as user id, password, screenshot analyse threshold, url, locators and others are stored.
<img src="https://github.com/GeGerardo/inspera/blob/main/git_images/folders.png" width="48">

### Prerequisites

Before running any script, the following dependencies must be installed:

* Python

`https://www.python.org/downloads/`

* **robotframework 4.0.1**: Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD)

`pip install robotframework`

* **Selenium**: Web testing library for Robot Framework

`pip install --upgrade robotframework-seleniumlibrary`

* **webdrivermanager 0.10.0**: Provides a way to automatically manage drivers for different browsers

`pip install webdrivermanager`

* **RobotEyes**: Visual Regression Library for Robot Framework
  
`pip install robotframework-eyes`
   
* **Imagemagick**: Used to compare the screenshots and check any visual bugs

**For mac:**
  `pip install robotframework-eyes`

**For linux:**
`apt-get install imagemagick`

**For windows:**
`https://imagemagick.org/script/download.php#windows`

### Environment preparation

To change the login id, password, testing browser(Chrome, Safari, Firefox, Edge), language and screenshot analyse threshold do the following steps:

1. Access the /variables folder
2. Open `data.robot` with any text editor
3. Follow the instructions and save


<!-- USAGE EXAMPLES -->
## Usage

1. To run all the test suites

`robot -d results -v images_dir:base_image tests`
2. To run a specific test suite

`robot -d results -v images_dir:base_image tests/suite_name.robot`

3. The `base_image` folder should be populated first. For this run the `CSS_Visual_Test.robot` one time 


4. Results will be saved in the results' folder.

* Open the report.html with a browser to see the full report from Robot Framework
![report-screenshot]
  

* Open the visualReport.html with a browser to see the `CSS_Visual_Test.robot`
![visual-screenshot]


[report-screenshot]: git_images/report.png
[visual-screenshot]: git_images/visualreport.png
[folders-screenshot]: git_images/folders.png
