#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    point1<-reactive({
        p<-input$slider1
        as.numeric(25.5941+(p/1000))
         
    })
    
    point3<-reactive({
        s<-input$slider1
       as.numeric(13.3490+(s/1000))
        
    })
    point2<-reactive({
        q<-input$slider2
        as.numeric(85.1376+(q/1000))
        
     
        
    })
    point4<-reactive({
        r<-input$slider2
        as.numeric(74.7856+(r/1000))
    })
        

    output$Mymap<-renderLeaflet({
        if(input$box1)
        {leaflet()%>%addTiles()%>%addMarkers(lat=point1(),lng=point2())} 
        else if(input$box2)
        {leaflet()%>%addTiles()%>%addMarkers(lat=point3(),lng=point4())}
    
})
        

})  


