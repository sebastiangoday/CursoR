bootstrapPage(
  
  selectInput(inputId = "separaciones",
              label = "Numero aproximado de bins en el histograma:",
              choices = c(4, 5, 6, 7),
              selected = 8),
  
  checkboxInput(inputId = "osbervaciones_individuales",
                label = strong("Mostrar observaciones individuales"),
                value = FALSE),
  
  checkboxInput(inputId = "densidad",
                label = strong("Mostrar estimado de densidad"),
                value = FALSE),
  
  plotOutput(outputId = "grafica_principal", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.densidad == true",
                   sliderInput(inputId = "Ajuste_AnchoBanda",
                               label = "Ajuste de ancho de banda:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  ),
  #Creo un slider
  sliderInput(inputId = "slider",
              label = "deslizar",
              min = 0,
              max = 5,
              value = 3)
)