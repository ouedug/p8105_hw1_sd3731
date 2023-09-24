p8105_hw1_qz3731
================
Susie Dong, sd3731
2023-09-23

# Problem 1

## load the dataset

data("early_january_weather")
head(early_january_weather, 5)

## describe the dataset

This is data frame of 358 rows representing hourly measurements and 15 variables.

### variables name

colnames(early_january_weather)

### Row Size

nrow(early_january_weather)
ncol(early_january_weather)

### Mean Temperature

mean(pull(early_january_weather, temp))

## scatterplot

### create a scatterplot

ggplot(early_january_weather, aes(x = time_hour, y = temp, color = humid)) + geom_point() + 
  ggtitle("Temperature - Time Hour Scatter Plot") + theme(plot.title = element_text(hjust = 0.5))

ggsave("hw1_scatterplot_p1.png")

### discribe a scatterplot

-The scatterplot demonstrates a distinct diurnal temperature variation, characterized by daytime temperature increases and nighttime decreases, aligning with typical daily temperature fluctuations.

-The color-coded points reveal variations in humidity levels with time and temperature, with darker colors indicating increased humidity at specific times, shedding light on humidity fluctuations.

-The existence of clustered points with similar colors hints at potential groupings and patterns, potentially signifying specific times of the day when humidity levels tend to be alike, prompting a deeper exploration of underlying weather or climate patterns.


# Problem 2

## create a data frame

my data = tibble(
  norm_data = rnorm(10),
  log_vec = norm_data > 0,
  cha_vec = letters[1:10],
  fac_vec = factor(sample(c(1, 2, 3), 10, replace = TRUE))
)

## the mean of each variable

mean_nd = mean(pull(my_data, norm_data))
mean_lv = mean(pull(my_data, log_vec))
mean_cv = mean(pull(my_data, cha_vec))
mean_fac = mean(pull(my_data, fac_vec))

mean(as.numeric(my_data$log_vec))
mean(as.numeric(my_data$cha_vec))
mean(as.numeric(my_data$fac_vec))

- we can find the character becomes numeric variable and if they are
absolutely numbers, they can be calculated.

- the “true” becomes 1 and “false” becomes 0, then it can be calculated.

- the different levels in factor sequence becomes a sequence with a
start number 1.

- according to what we find above, we can explain why a mean can be
calculated when we use a `as.numeric` function.

