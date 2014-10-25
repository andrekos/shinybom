shinyServer(function(input, output) {
datasetInput <- reactive({
        setkey(BOMDAILYTEMP,Site,Year,Month)
        a <- BOMDAILYTEMP[J(as.integer(input$Site),input$Year,input$Month)]
        a.wide<-dcast.data.table(a, Day~ Variable, value.var='Value')
        return(a.wide)
})

#  ---------

datasetInput2 <- reactive({
        setkey(BOMDAILYTEMP,Site,Month)
        a <- BOMDAILYTEMP[J(as.integer(input$Site),input$Month)]
        a.wide<-dcast.data.table(a, Year+Day~Variable, value.var='Value')
        return(a.wide)
})


#  ---------

  output$scatter <- renderGvis({

    jscode <- "var sel = chart.getSelection();
               var row = sel[0].row;
               var text = data.getValue(row, 0);               
               $('input#selected').val(text);
               $('input#selected').trigger('change');"
 
    gvisScatterChart(datasetInput(),options=list(gvis.listener.jscode=jscode,
         title=paste("Daily records at BOM weather site",input$Site,
                     "in",month.name[input$Month],input$Year),
         titleTextStyle="{color:'green',
                             fontName:'Courier',
                             fontSize:15}",
         curveType='function', pointSize=0, lineWidth=2,
         
         hAxis = list(list(viewWindowMode = "explicit",
                           viewWindow = list(max = 32, min = 0),title="day of the month")),
         
         vAxis = list(list(viewWindowMode = "explicit",
                           viewWindow = list(max = 50, min = 0),title="degree Celsius")),
         width=740, height=300
    ))
  })


#  ---------

  output$boxplot <- renderPlot({
    if (is.null(input$selected))
       return(NULL)
    
    boxplot(datasetInput2()[,-c(1,2),with=FALSE],col = "bisque")
    title(paste0("Boxplot of ",month.name[input$Month]," observations (since ",
                datasetInput2()$Year[1],")"))
  })

#  ---------

output$table <- renderGvis({

gvisTable(datasetInput(), options=list(
page='enable', pageSize = 16, width='570px', height='480px', backgroundColor="black"))

})

#  ---------

output$selectedOut <- renderUI({
  textInput("selected", "", value="10")
})
outputOptions(output, "selectedOut", suspendWhenHidden=FALSE) 

})


