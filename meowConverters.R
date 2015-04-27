meowConverters= function()
{
  require("pander")
  require("ggplot2")
  require(knitr)
  options(rstudio.markdownToHTML = 
            function(inputFile, outputFile) {      
              system(paste("mmd", inputFile, " > ", outputFile))
            }
  )
  require("markdown")
  knit2html("D:\\codes\\webrtc-xx\\README.md")
  
  infile <- "D:\\codes\\webrtc-xx\\README.md"
  outfile <- "D:\\codes\\webrtc-xx\\README.md"
  
  success = c()
  msg = paste0("pandoc -o ", outfile, ".docx", infile, ".md")
  success = c(success,system(msg, intern = TRUE))
  if(length(success)==0)
  {
    return(TRUE)
  } 
  else {
    return(FALSE)
  }
}
meowConverters()
