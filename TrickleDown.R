library(readr)
df <- read_csv("Downloads/Reagantax.csv")

head(df)
df <- na.omit(df)

# Model 1: Segmented regression (pre vs post)
model1 <- lm(MedianInc ~ Time + Post + TimePost, data = df)
summary(model1)

# Model 2: Direct effect of top marginal tax rate
model2 <- lm(MedianInc ~ Time + Toptax, data = df)
summary(model2)

# Model 3: Combined model
model3 <- lm(MedianInc ~ Time + Post + TimePost + Toptax, data = df)
summary(model3)

# Model 4: Segmented regression (pre vs post)
model4 <- lm(RealMedianInc ~ Time + Post + TimePost, data = df)
summary(model4)

# Model 5: Direct effect of top marginal tax rate
model5 <- lm(RealMedianInc ~ Time + Toptax, data = df)
summary(model5)

# Model 6: Combined model
model6 <- lm(RealMedianInc ~ Time + Post + TimePost + Toptax, data = df)
summary(model6)

library(ggplot2)

ggplot(df, aes(x = Year)) +
  geom_line(aes(y = MedianInc, color = "Nominal Income"), size = 1.2) +
  geom_point(aes(y = MedianInc, color = "Nominal Income"), size = 2) +
  geom_line(aes(y = RealMedianInc, color = "Real Income"), size = 1.2) +
  geom_point(aes(y = RealMedianInc, color = "Real Income"), size = 2) +
  geom_vline(xintercept = 1981, linetype = "dashed", color = "black") + # Tax cut year
  labs(
    title = "Nominal vs Real Median Income Over Time",
    x = "Year",
    y = "Income ($)",
    color = "Series"
  ) +
  theme_minimal() +
  scale_color_manual(values = c("Nominal Income" = "blue", "Real Income" = "red"))