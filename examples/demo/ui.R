
header <- dashboardHeader(
  title = "spsComps"
)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Image Display", tabName = "images", icon = icon("images")),
    menuItem("Text Control", tabName = "text", icon = icon("font")),
    menuItem("Welcome", tabName = "welcome", icon = icon("star"))
  )
)

body <- dashboardBody(
  tags$head(
    tags$link(href = "demo.css", rel = "stylesheet"),
    tags$link(href = "https://github.com/lz100/spsComps/blob/master/img/spscomps.png?raw=true", rel = "icon"),
  ),
  tabItems(
    tabItem(tabName = "welcome", uiWelcome("welcome")),
    tabItem(tabName = "text", uiText("text")),
    tabItem(tabName = "images", uiImages("images"))
  )
)


ui <- dashboardPage(
  header = header,
  sidebar = sidebar,
  body =  body,
  title = "spsComps Demo"
)


