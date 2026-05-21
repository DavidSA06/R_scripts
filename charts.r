iris <- iris

##Boxplot usando ggplot
library("ggplot2")
caja1 <- ggplot(data = iris,
               mapping = aes(x = Species,
                            y = Sepal.Length,
                            fill = Species)) +
  geom_boxplot()

#Visualizamos
caja1

caja2 <- caja1 +
  
  labs(
    title = "Longitud del sépalo por especie",
    x = "Especie",
    y = "Longitud del sépalo en cm"
  ) +
  
  theme(
    axis.title.x = element_text(size = 14),
    
    axis.title.y = element_text(size = 14),
    
    plot.title = element_text(
      size = 15,
      face = "bold",
      color = "black",
      hjust = 0.5,
      vjust = 1,
      family = "sans"
    ),
    
    panel.background = element_rect(
      fill = "#d3e5e5"
    )
  ) +
  
  scale_fill_manual(values = c(
    "setosa" = "#49b9f9",
    "versicolor" = "#e33830",
    "virginica" = "#5abfb7"
  ))

caja2

# Temas: bw,classic,dark
#caja2 + theme_dark()

histo1 <- ggplot(
  data = iris,
  mapping = aes(
    x = Petal.Width,
    fill = Species
  )
) +
  
  geom_histogram(bins = 5) +
  
  scale_fill_manual(values = c(
    "setosa" = "#49b9f9",
    "versicolor" = "#e33830",
    "virginica" = "#5abfb7"
  )) +
  
  theme(
    panel.background = element_rect(
      fill = "#d3e5e5"
    )
  )

histo1