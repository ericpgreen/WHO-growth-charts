# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# WHO growth charts (Z scores)
# data from http://www.who.int/childgrowth/en/
# eric.green@duke.edu :: @ericpgreen
# created Nov 13, 2013
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# load packages
  library(ggplot2)
# weight for age
  # boys
    wfa.b.z <- read.csv("wfa-b-z.csv")
    bwplot <- ggplot(wfa.b.z, aes(x=Month)) +
      geom_line(aes(y=SD3neg), colour="#D55E00") +
      geom_line(aes(y=SD2neg), colour="#E69F00") +
      geom_line(aes(y=SD1neg), colour="#009E73") +
      geom_line(aes(y=SD1), colour="#009E73") +
      geom_line(aes(y=SD2), colour="#E69F00") +
      geom_line(aes(y=SD3), colour="#D55E00") +
      theme_bw() +
      scale_x_continuous(expand=c(0,0),
                         breaks = c(0,1,2,6,12,18,24,36,48,60),
                         minor_breaks = seq(1, 60, 1)) +
      scale_y_continuous(expand=c(0,0),
                         breaks = c(seq(0, 28, 2)),
                         minor_breaks = seq(0, 28, 0.5)) +
      geom_vline(xintercept = c(1,2,6,12,18,24,36,48,60),
                 linetype="longdash", colour="#999999") +
      ylab("Weight (Kg)") +
      theme(panel.border = element_blank()) +
      geom_ribbon(aes(ymin=0, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3, ymax=28), fill = "#D55E00",alpha = 0.10)
    
    bwplot  + 
      labs(title = "Weight for age", 
           subtitle = "Boys", 
           caption = "From 0 to 60 months")
    
    bwplot + coord_cartesian(xlim = c(0, 6), ylim = c(0, 12)) +
      labs(title = "Weight for age", 
           subtitle = "Boys", 
           caption = "From 0 to 6 months")      

  # girls
    wfa.g.z <- read.csv("wfa-g-z.csv")
    gwplot <- ggplot(wfa.g.z, aes(x=Month)) +
      geom_line(aes(y=SD3neg), colour="#D55E00") +
      geom_line(aes(y=SD2neg), colour="#E69F00") +
      geom_line(aes(y=SD1neg), colour="#009E73") +
      geom_line(aes(y=SD1), colour="#009E73") +
      geom_line(aes(y=SD2), colour="#E69F00") +
      geom_line(aes(y=SD3), colour="#D55E00") +
      theme_bw() +
      scale_x_continuous(expand=c(0,0),
                         breaks = c(0,1,2,6,12,18,24,36,48,60),
                         minor_breaks = seq(1, 60, 1)) +
      scale_y_continuous(expand=c(0,0),
                         breaks = c(seq(0, 30, 2)),
                         minor_breaks = seq(0, 30, 0.5)) +
      geom_vline(xintercept = c(1,2,6,12,18,24,36,48,60),
                 linetype="longdash", colour="#999999") +
      ylab("Weight (Kg)") +
      theme(panel.border = element_blank()) +
      geom_ribbon(aes(ymin=0, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3, ymax=30), fill = "#D55E00",alpha = 0.10) 
    
    gwplot + 
      labs(title = "Weight for age", 
           subtitle = "Girls", 
           caption = "From 0 to 60 months")
    
    gwplot + coord_cartesian(xlim = c(0, 6), ylim = c(0, 12)) +
      labs(title = "Weight for age", 
           subtitle = "Girls", 
           caption = "From 0 to 6 months")     
    
# length for age
  # boys
    lfa.b.z <- read.csv("lfa-b-z.csv")
    blplot <- ggplot(lfa.b.z, aes(x=Month)) +
      geom_line(aes(y=SD3neg), colour="#D55E00") +
      geom_line(aes(y=SD2neg), colour="#E69F00") +
      geom_line(aes(y=SD1neg), colour="#009E73") +
      geom_line(aes(y=SD1), colour="#009E73") +
      geom_line(aes(y=SD2), colour="#E69F00") +
      geom_line(aes(y=SD3), colour="#D55E00") +
      theme_bw() +
      scale_x_continuous(expand=c(0,0),
                         breaks = c(0,1,2,6,12,18,24),
                         minor_breaks = seq(1, 24, 1)) +
      scale_y_continuous(expand=c(0,0),
                         breaks = c(seq(40, 100, 5)),
                         minor_breaks = seq(40, 100, 0.5)) +
      geom_vline(xintercept = c(1,2,6,12,18,24),
                 linetype="longdash", colour="#999999") +
      ylab("Length (cm)") +
      theme(panel.border = element_blank()) +
      geom_ribbon(aes(ymin=40, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3, ymax=100), fill = "#D55E00",alpha = 0.10)
    
    blplot + 
      labs(title = "Lenght for age",
           subtitle = "Boys",
           caption = "From 0 to 24 months")
    
  # girls
    lfa.g.z <- read.csv("lfa-g-z.csv")
    wlplot <- ggplot(lfa.g.z, aes(x=Month)) +
      geom_line(aes(y=SD3neg), colour="#D55E00") +
      geom_line(aes(y=SD2neg), colour="#E69F00") +
      geom_line(aes(y=SD1neg), colour="#009E73") +
      geom_line(aes(y=SD1), colour="#009E73") +
      geom_line(aes(y=SD2), colour="#E69F00") +
      geom_line(aes(y=SD3), colour="#D55E00") +
      theme_bw() +
      scale_x_continuous(expand=c(0,0),
                         breaks = c(0,1,2,6,12,18,24),
                         minor_breaks = seq(1, 24, 1)) +
      scale_y_continuous(expand=c(0,0),
                         breaks = c(seq(40, 100, 5)),
                         minor_breaks = seq(40, 100, 0.5)) +
      geom_vline(xintercept = c(1,2,6,12,18,24),
                 linetype="longdash", colour="#999999") +
      ylab("Length (cm)") +
      theme(panel.border = element_blank()) +
      geom_ribbon(aes(ymin=40, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3, ymax=100), fill = "#D55E00",alpha = 0.10)
    
    wlplot + 
      labs(title = "Lenght for age",
           subtitle = "Girls",
           caption = "From 0 to 24 months")
    
# height for age
  # boys
  hfa.b.z <- read.csv("hfa-b-z.csv")
  bhplot <- ggplot(hfa.b.z, aes(x=Month)) +
    geom_line(aes(y=SD3neg), colour="#D55E00") +
    geom_line(aes(y=SD2neg), colour="#E69F00") +
    geom_line(aes(y=SD1neg), colour="#009E73") +
    geom_line(aes(y=SD1), colour="#009E73") +
    geom_line(aes(y=SD2), colour="#E69F00") +
    geom_line(aes(y=SD3), colour="#D55E00") +
    theme_bw() +
    scale_x_continuous(expand=c(0,0),
                       breaks = c(24, 36, 48, 60),
                       minor_breaks = seq(24, 60, 1)) +
    scale_y_continuous(expand=c(0,0),
                       breaks = c(seq(75, 130, 5)),
                       minor_breaks = seq(75, 130, 0.5)) +
    geom_vline(xintercept = c(24, 36, 48, 60),
               linetype="longdash", colour="#999999") +
    ylab("Height (cm)") +
    theme(panel.border = element_blank()) +
    geom_ribbon(aes(ymin=75, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
    geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
    geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
    geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
    geom_ribbon(aes(ymin=SD3, ymax=130), fill = "#D55E00",alpha = 0.10)
  
  bhplot + 
    labs(title = "Height for age",
         subtitle = "Boys",
         caption = "From 24 to 60 months")
  
  # girls
    hfa.g.z <- read.csv("hfa-g-z.csv")
    ghplot <- ggplot(hfa.g.z, aes(x=Month)) +
      geom_line(aes(y=SD3neg), colour="#D55E00") +
      geom_line(aes(y=SD2neg), colour="#E69F00") +
      geom_line(aes(y=SD1neg), colour="#009E73") +
      geom_line(aes(y=SD1), colour="#009E73") +
      geom_line(aes(y=SD2), colour="#E69F00") +
      geom_line(aes(y=SD3), colour="#D55E00") +
      theme_bw() +
      scale_x_continuous(expand=c(0,0),
                         breaks = c(24, 36, 48, 60),
                         minor_breaks = seq(24, 60, 1)) +
      scale_y_continuous(expand=c(0,0),
                         breaks = c(seq(70, 130, 5)),
                         minor_breaks = seq(70, 130, 0.5)) +
      geom_vline(xintercept = c(24, 36, 48, 60),
                 linetype="longdash", colour="#999999") +
      ylab("Height (cm)") +
      theme(panel.border = element_blank()) +
      geom_ribbon(aes(ymin=75, ymax=SD3neg), fill = "#D55E00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3neg, ymax=SD1neg), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1neg, ymax=SD1), fill = "#009E73",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD1, ymax=SD3), fill = "#E69F00",alpha = 0.10) +
      geom_ribbon(aes(ymin=SD3, ymax=125), fill = "#D55E00",alpha = 0.10)
    
    ghplot + 
      labs(title = "Height for age",
           subtitle = "Girls",
           caption = "From 24 to 60 months")
    