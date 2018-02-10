### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/justusfrantz/capstone

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone Week 7",
                   tabPanel("Word Prediction",
                            HTML("<strong>By Maria Pintea</strong>"),
                            br(),
                            img(src = "./headers.png"),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter word or sentence"),
                                textInput("inputString", "Enter word or sentence",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Predicted Next Word"),
                                verbatimTextOutput("prediction"),
                                strong("Sentence Input:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                textOutput('text1'),
                                br(),
                                strong("Note:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                textOutput('text2')
                              )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                              img(src = "./headers.png"),
                              includeMarkdown("InfoFile.md")
                            )
                   )
)
)