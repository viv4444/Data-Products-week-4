#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)


shinyUI(fluidPage(
        titlePanel("My interactive map"),
        sidebarLayout(sidebarPanel(
            checkboxInput("box1","My house"),
            checkboxInput("box2","My college"),
            sliderInput("slider1",h3("Use this slider to move North/South"),min = -100,max = 100,value = 0),
            helpText(h6("Moving the slider left takes you south and moving right takes you north")),
            sliderInput("slider2",h3("Use this Slider to move East/West"),min = -100,max = 100,value = 0),
            helpText(h6("Moving the slider left takes you west and right takes you east")),

            submitButton("submit"),
            
            helpText(h6("This app allows you to move the marker in the map with the help of a slider")),
            helpText(h6("Choose a particular place (ie- college or house)(choose only one) and then click submit")),
            helpText(h6("and then hover above the place using the sliders (reactive output)"))
            
            
        ),
        mainPanel(
            leafletOutput("Mymap")
            
        )
        
        
        )
        
    )
)    
