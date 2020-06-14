# Assignment: Week 3 and 4

# Name: Luma, Alberto

# Import the Hotdog contest winners data
unemployment_rate_1948_2010<- read.delim(file.choose(), header=T, sep=",")
# Attach the data
attach(unemployment_rate_1948_2010)

dim(unemployment_rate_1948_2010)

names(unemployment_rate_1948_2010)

## Installing the package and calling the package in R##
install.packages("treemap")
library(treemap)
library(dplyr)

print(head(unemployment_rate_1948_2010))

treemap::treemap(unemployment_rate_1948_2010,index = c('Period'),
                 vSize = 'Value',
                 title = 'Value by Period', 
                 palette = 'RdYlGn')

avg_unemployement = unemployment_rate_1948_2010 %>%
  dplyr::group_by(Year) %>%
  dplyr::summarize('Average Value' = mean(Value))

head(avg_unemployement)

head(avg_unemployement)

ggplot2::ggplot(avg_unemployement, ggplot2::aes(x=Year , y=`Average Value`)) +
  ggplot2::geom_area( fill='blue', alpha=.2) +
  ggplot2::geom_line() +
  ggplot2::ggtitle('Average Value by Year')


ggplot2::ggplot(unemployment_rate_1948_2010, ggplot2::aes(x=Year, y=Value, fill=Period)) + 
  ggplot2::geom_area()

