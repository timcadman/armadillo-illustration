################################################################################
## Project: armadillo-illustration
## Script purpose: theme for final plot
## Date: 4th March 2024
## Author: Tim Cadman
## Email: t.j.cadman@umcg.nl
################################################################################  

forest_theme <- theme(
  plot.background = element_rect(fill =scales::alpha("#CCCCCC", 0.3)),  
  panel.background = element_rect(fill="white"), 
  panel.grid.major = element_line(colour="grey"), 
  panel.grid.minor = element_line(colour="white"), 
  panel.spacing = unit(1, "lines"),
  plot.title = element_text(
    hjust = 0.5, 
    vjust = 0, size = 12, face = "bold"), 
  text = element_text(family = "avenir-book", size = 9), 
  axis.title.y = element_text(
    size = 14, margin = margin(t = 0, r = 10, b = 0, l = 0)), 
  axis.title.x = element_text(
    size = 14, 
    margin = margin(t = 10, r = 0, b = 0, l = 0)),
  axis.text.x = element_text(
    size = 11, 
    margin = margin(t = 4, r = 0, b = 0, l = 0), 
    colour = "black"), 
  axis.text.y = element_text(
    size = 11, 
    margin = margin(t = 0, r = 4, b = 0, l = 0), colour = "black"),
  axis.ticks.length=unit(0.3, "cm"),
  axis.ticks = element_line(colour = "grey"),
  strip.text.x = element_text(size = 11, face = "bold"),
  strip.background = element_blank(),
  legend.background = element_rect(fill = scales::alpha("#CCCCCC", 0.03)), 
  legend.title = element_text(size = 8, face = "bold"), 
  legend.text = element_text(size = 8), 
  legend.position = "right", 
  legend.direction = "vertical", 
  legend.justification = "left", 
  legend.key.width = unit(3, "line"), 
  legend.margin = margin(t = 0.2, r = 0, b = 0.2, l = 0, unit = "cm"), 
  plot.margin = unit(c(0.5, 0.5, 0.2, 0.5),"cm"),
  panel.grid.minor.y = element_blank(),
  panel.grid.major.y = element_blank())