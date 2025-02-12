# Install and load Rcrawler package
install.packages("Rcrawler")
library(Rcrawler)

# --- Flight statistics tracking ---
# Source: https://www.flightstats.com/
flight_url <- "https://www.flightstats.com/v2/flight-tracker/IB/2602?year=2024&month=9&date=18&flightId=1274981083"

# Crawl flight statistics page
Rcrawler(Website = flight_url)

# View indexed data
View(INDEX)

# Extract specific content based on Xpath pattern
ContentScraper(
  Url = flight_url, 
  XpathPatterns = '//*[contains(concat( " ", @class, " " ), concat( " ", "WlxJD", " " ))]'
)


# --- Flight price tracking ---
# Source: eDreams
price_url <- "https://www.edreams.com/travel/#results/type=R;from=BCN;to=PAR;dep=2024-09-19;ret=2024-09-22;buyPath=FLIGHTS_HOME_SEARCH_FORM;internalSearch=true"

# Crawl flight search results page
Rcrawler(Website = price_url)

# View indexed data
View(INDEX)

# Extract specific content based on Xpath pattern
ContentScraper(
  Url = price_url, 
  XpathPatterns = '//div'
)
