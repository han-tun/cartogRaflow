% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flowjointure.R
\name{flowjointure}
\alias{flowjointure}
\title{Builds a spatial join with a flow dataset}
\usage{
flowjointure(geom, bkg, DF.flow, origin, destination, DF.point, id, x, y)
}
\arguments{
\item{geom}{the geometry of the spatial features layer: points or areas}

\item{bkg}{the spatial features layer}

\item{DF.flow}{the input flow dataset as a dataframe}

\item{origin}{the place of origin code}

\item{destination}{the place of destination code}

\item{DF.point}{a dataframe of points or places}

\item{id}{dataframe of points or places file code}

\item{x}{the X coordinate of the point or places}

\item{y}{the Y coordinate of the point or places}
}
\value{
the corresponding joint table between the flow dataset and the
spatial feature layer
}
\description{
Builds a spatial join between a flow dataset and a
spatial features layer (as a map background)
}
\examples{
library(cartograflow)
library(sf)
data(flowdata)
map <- st_read(system.file("shape/MGP_TER.shp", package = "cartograflow"))
tabflow <- flowjointure(
  geom = "area", bkg = map, DF.flow = flows, origin = "i", destination = "j",
  id = "EPT_NUM", x = "X", y = "Y"
)
}
