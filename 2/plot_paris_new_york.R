# Paris to New York 
load("~/air_join/df_paris-new_york.RData")
df_agrup <- df[1:154, c("Date","prices")]
df_agrup$prices  <- substr(df_agrup$prices, 1, nchar(df_agrup$prices) - 2)

df_agrup$prices <- as.numeric(df_agrup$prices)
ggplot(df_agrup, aes(x = prices)) + geom_histogram()

library(areaplot)
mean_price <- mean(df_agrup$prices, na.rm = TRUE)

p <- ggplot(df_agrup)  +  
  geom_bar(aes(x=Date, y = prices), fill = "tomato2", color = "black", width = 0.7 ,
           stat='identity') 
p <- p  + labs(
  title = "Paris to New York at January 2025",
  subtitle = "Evolution of the cheapest flight",
  y = "Price (€)",
  x = "Date"
)+  # Línea horizontal del precio medio
  annotate("label", x = min(df_agrup$Date), y = max(df_agrup$prices, na.rm = TRUE) * 0.95,  
           label = paste("Mean Price:", round(mean_price, 2), "€"), 
           color = "black", fill = "white", size = 5, fontface = "bold", hjust = -4) + 
  theme(
    plot.title = element_text(
      family = "Econ Sans Cnd", 
      face = "bold",
      size = 20
    ),
    plot.subtitle = element_text(
      family = "Econ Sans Cnd",
      size = 16
    )
  )
p <- p + scale_x_date(date_labels = "%b %Y", date_breaks = "1 month")+ 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p + 
  theme(
    plot.margin = margin(0.05, 0, 0.1, 0.01, "npc")
  ) 

grid.lines(
  x = c(0, 1),
  y = 1,
  gp = gpar(col = "#e5001c", lwd = 4)
)

grid.rect(
  x = 0,
  y = 1,
  width = 0.05,
  height = 0.025,
  just = c("left", "top"),
  gp = gpar(fill = "#e5001c", lwd = 0)
)
grid.text(
  "Source: github.com/javicarela", 
  x = 0.005, 
  y = 0.06, 
  just = c("left", "bottom"),
  gp = gpar(
    col = "grey",
    fontsize = 16,
    fontfamily = "Econ Sans Cnd"
  )
)

