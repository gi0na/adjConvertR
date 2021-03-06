% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/node_maps.R
\name{nodes_from_el}
\alias{nodes_from_el}
\title{Extract node names from an edgelist}
\usage{
nodes_from_el(edge.list, select_cols = NULL)
}
\arguments{
\item{edge.list}{edgelist, either in matrix or dataframe/tibble format}

\item{select_cols}{optional vector specifying source and target columns of
the edgelist. When absent, existing source and target columns are used. If
no columns named source or target are present, and the parameter is not
specified, the first and second column are assumed to be source and target.
If `select_cols` is a numeric vector, its first two elements are assumed to
be the source and target columns indices. If `select_cols` is a character
vector, its first two elements are assumed to be the names of the source
and target columns.}
}
\value{
vector containing unique node names
}
\description{
This function allows to extract the node names for an edgelist. When the
parameter select_cols is absent, existing source and target columns are used.
If no columns named source or target are present, and the parameter is not
specified, the first and second column are assumed to be source and target.
}
\examples{
el <- data.frame(from= c('a','b','b','c','d','d'),
                to  = c('b','c','d','a','b','a'),
                attr= c( 12, 6, 12 , 6 , 6 , 6 ))

nodes_from_el(el, select_cols = c('from','to'))
nodes_from_el(el, select_cols = 1:2)
nodes_from_el(el)

}
