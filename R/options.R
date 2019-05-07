getDefaultOpts <- function(...){

  dopts <- list(
    background = "transparent",
    nLevels = 5,
    labelWrap = 12,
    projectionName = NULL,
    projectionOpts = list(
      ratio = NULL,
      type = NULL,
      orientation = c(90, 0, 0)
    ),
    label = NULL,
    popup = NULL,
    graticule = FALSE,
    palette = "viridis",
    customPalette = NA,
    scale = 'continuous',
    defaultFill = "#bdcad1",
    naColor = "#CCCCCC",
    tiles = NULL,
    border_color = "#2d2d2d",
    borderWidth = 1,
    borderOpacity = 1,
    opacity = 0.7,
    agg = 'sum',
    count = TRUE,
    percentage = FALSE,
    size = c(3, 20),
    marks = c(".", ","),
    prefix = NULL,
    suffix = NULL,
    color = NULL,
    nDigits = NULL,
    zoom = 5,
    textMap = list(
      optText = 'code',
      propText = 'all',
      size = 1
    ),
    titles = list(
      title = list(
        text = "",
        family = "Ubuntu",
        color = "#000000",
        size = 10
      ),
      subtitle = list(
        text = "",
        family = "Ubuntu",
        color = "#000000",
        size = 9
      ),
      caption = list(
        text = "",
        family = "Ubuntu",
        color = "#000000",
        size = 7
      )
    ),
    legend_title = NULL,
    legend = list(
      background = 'transparent',
      show = c(TRUE,TRUE),
      border = "transparent",
      color = 'black',
      position = 'bottomleft',
      title = "",
      choropleth = list(
        type = "quantile",
        #defaultFillTitle = NULL,
        #top = 1,
        #left = 1,
        #orient = "vertical",
        #labels = NULL,
        limit = 0.1,
        mode = 'quantile'
        #position = 'left',

      ),
      bubbleColor = list(
        # type = "numeric",
        # title = "",
        # defaultFillTitle = NULL,
        # top = 35,
        # left = 1,
        # orient = "vertical",
        # labels = NULL,
        # show = TRUE
      ),
      bubbleSize = list(
        # type = "numeric",
        # title = "",
        # defaultFillTitle = NULL,
        # top = 70,
        # left = 1,
        # orient = "horizontal",
        # labels = NULL,
        # show = TRUE
      )
    ),
    bubbles = list(
      minSize = 0.1,
      maxSize = 10
      # borderWidth = 0.001,
      # borderColor = '#FF6A37',
      # fillOpacity = 0.5,
      # highlightOnHover = TRUE,
      # highlightFillColor = 'rgba(255, 106, 55, 0.3)',
      # highlightBorderColor = '#FB4B3A',
      # highlightBorderWidth = 1,
      # highlightFillOpacity = 0.7,
      # palette = "Set3"
    )
  )
  dopts
}




getOpts <- function(opts = NULL){

  userOpts <- opts
  defaultOpts <- getDefaultOpts()

  if(!is.null(opts)){
    opts <- modifyList(defaultOpts, userOpts)
  }else{
    opts <- defaultOpts
  }

  opts
}


