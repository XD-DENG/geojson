% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geometrycollection.R
\name{geometrycollection}
\alias{geometrycollection}
\title{geometrycollection class}
\usage{
geometrycollection(x)
}
\arguments{
\item{x}{input}
}
\description{
geometrycollection class
}
\examples{
x <- '{
 "type": "GeometryCollection",
 "geometries": [
   {
     "type": "Point",
     "coordinates": [100.0, 0.0]
   },
   {
     "type": "LineString",
     "coordinates": [ [101.0, 0.0], [102.0, 1.0] ]
   }
  ]
}'
(y <- geometrycollection(x))
geo_type(y)
geo_pretty(y)
geo_write(y, f <- tempfile(fileext = ".geojson"))
jsonlite::fromJSON(f, FALSE)
unlink(f)

# bigger geometrycollection
file <- system.file("examples", "geometrycollection1.geojson", package = "geojson")
(y <- geometrycollection(paste0(readLines(file), collapse="")))
geo_type(y)
geo_pretty(y)
}

