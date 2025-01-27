# air_join
Automated web scraping system to collect real-time flight prices from various airline and travel websites.
<p align="center">
  <img src="https://raw.githubusercontent.com/javicarela/air_join/main/plots/Paris_to_new_york.jpeg" width="800">
</p>
 
## Prerequisites

To run this project, you need to have **Docker** installed on your system. You can follow this guide to install and configure it properly:  
[Getting Started with R and Docker](https://www.appsilon.com/post/r-docker-getting-started)  

## Required Packages

The following R packages are used in this project:

- **rvest**: Allows easy extraction of data from web pages.  
  - Documentation: [https://rvest.tidyverse.org](https://rvest.tidyverse.org)  

- **RSelenium**: Provides an interface to control web browsers via Selenium WebDriver.  
  - Documentation: [https://cran.r-project.org/web/packages/RSelenium/index.html](https://cran.r-project.org/web/packages/RSelenium/index.html)  We are going to use Mozilla containers.

Make sure to install these packages before running the code.  
