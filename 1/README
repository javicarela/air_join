# Web Scraping Scripts

All web scraping scripts in this repository will begin with the following initialization code:

```r
library(RSelenium)
library(data.table)

remDr <- remoteDriver(
  remoteServerAddr = "localhost",
  port = 4447L
)
system("docker run -d -p 4447:4444 selenium/standalone-firefox:2.53.0")
remDr$open()

remDr$setTimeout(type = "page load",
                 milliseconds = 30000)
remDr$setImplicitWaitTimeout(10000)
```

## Description

This setup ensures the use of Selenium for automated web interaction, running a Firefox container via Docker. It establishes a connection with the remote driver, sets a page load timeout of 30 seconds, and configures an implicit wait timeout of 10 seconds for better element detection.

  ## Requirements
- R
- RSelenium package
- data.table package
- Docker


