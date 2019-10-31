function(input, output) {
  
  output$grafica_principal<- renderPlot({
    
    plot(cars$speed,cars$dist,
         probability = TRUE,
         breaks = as.numeric(input$separaciones),
         xlab = "Velocidad",
         main = "Relacion entre velocidad y distancia de frenado",col = "royalblue2")
    
    if (input$osbervaciones_individuales) {
      #lines(cars$dist) 
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