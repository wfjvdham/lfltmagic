% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/choropleth.R
\name{lflt_choropleth_Gcd}
\alias{lflt_choropleth_Gcd}
\title{Leaflet choropleths by geo code}
\usage{
lflt_choropleth_Gcd(data = NULL, mapName = "world_countries",
  opts = NULL)
}
\arguments{
\item{x}{A data.frame}
}
\value{
leaflet viz
}
\description{
Leaflet choropleths by geo code
}
\section{ctypes}{
 Gcd
}

\examples{
lflt_choropleth_Gcd(sampleData("Gcd", nrow = 10))
}
