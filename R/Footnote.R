###############################################################
##                                                           ##
##      R: Good practice - adding footnotes to graphics      ##
##                                                           ##
###############################################################

# basic information at the beginning of each script
scriptName <- "© nguyenkhacdung.github.io"
author <- "Canhgiacduoc FB Page"
footnote <- paste(scriptName, #format(Sys.time(), "%d %b %Y"),
                  author, sep=" / ")

makeFootnote <- function(footnoteText=
                           format(Sys.time(), "%d %b %Y"),
                         size= .7, color= grey(.1))
{
  require(grid)
  pushViewport(viewport())
  grid.text(label= footnoteText ,
            x = unit(1,"npc") - unit(2, "mm"),
            y= unit(2, "mm"),
            just=c("right", "bottom"),
            gp=gpar(cex= size, col=color))
  popViewport()
}

makeFootnote(footnote, size = 0.75, color = "blue")

## Example ##
# plot(1:19)
library(ggplot2)

ggplot(data=mtcars)+geom_bar(aes(mpg))
makeFootnote(scriptName, size = 0.8, color = "blue")
