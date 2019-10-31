function(input, output) {
  
  output$grafica_principal<- renderPlot({
    
    hist(iris$largoSep,
         probability = TRUE,
         breaks = as.numeric(input$separaciones),
         xlab = "Duracion (minutos)",
         main = "Duracion de la erupcion de Geyser")
    
    if (input$osbervaciones_individuales) {
      rug(iris$largoSep)
    }
    
    if (input$densidad) {
      dens <- density(iris$largoSep,
                      adjust = input$Ajuste_AnchoBanda)
      lines(dens, col = "blue")
    }
    if (input$slider){
      abline(v = input$slider, col= "red")
    }
  })
}