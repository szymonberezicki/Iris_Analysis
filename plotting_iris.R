# install pckgs and load
library(dplyr)
library(ggplot2)

# lets plot some iris data
data <- iris
head(data)

# Fitting the line for all
ggplot(data, aes(Sepal.Length, Sepal.Width)) +
        geom_point() +
        geom_smooth(method = 'lm')



ggplot(data, aes(Sepal.Length, Sepal.Width, color = Species)) +
        geom_point() +
        geom_smooth(method = 'lm') +
        labs(y = 'Sepal width', x = 'Sepal length') +
        theme_starwars() +
        theme(panel.grid.minor = element_blank(),
              legend.position = 'top')
      
ggsave('./figures/iris_lm_species.pdf', height = 5, width = 5)