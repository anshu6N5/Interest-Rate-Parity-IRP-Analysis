library(ggplot2)
library(janitor)
library(httr)





data <- fromJSON(content(GET("https://open.er-api.com/v6/latest/USD"), "text"))$rates
spot <- 1 / data[["INR"]]             
us_rate <- 0.05; in_rate <- 0.07       
forward_rate <- spot * (1 + in_rate) / (1 + us_rate)


df_irp <- data.frame(
  Type = c("Spot Rate","Forward Rate"),
  Rate = c(spot, forward_rate)
)


ggplot(df_irp, aes(Type, Rate, fill=Type)) +
  geom_col(show.legend=FALSE) +
  theme_minimal() +
  labs(title="Interest Rate Parity: USD/INR", y="Exchange Rate") +
  geom_text(aes(label=round(Rate,3)), vjust=-0.5)