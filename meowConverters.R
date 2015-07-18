meowConverters= function()
{
  require("pander")
  require("ggplot2")
  require(knitr)

## Converting any markdown file into HTML as well as .txt formats

  options(rstudio.markdownToHTML = 
            function(inputFile, outputFile) {      
              system(paste("mmd", inputFile, " > ", outputFile))
            }
  )
  require("markdown")
  knit2html("D:\\codes\\webrtc-xx\\README.md")
}
meowConverters()
