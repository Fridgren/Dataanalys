
#laddar ggplot2 
library(ggplot2)

# data frame
df.team_data <- expand.grid(teams = c("Team A", "Team B", "Team C", "Team D")
                            ,metrics = c("Metric 1", "Metric 2", "Metric 3", "Metric 4", "Metric 5")
)

# addera variabel: performance
set.seed(41)
df.team_data$performance <- rnorm(nrow(df.team_data))

#inspektera
head(df.team_data)


# PLOT: heatmap
# Jag kör på geom_tile()
# ggplot2 

ggplot(data = df.team_data, aes(x = metrics, y = teams)) +
  geom_tile(aes(fill = performance))
