% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots-eda.R
\name{plot_hclust}
\alias{plot_hclust}
\title{Plot pretty hierarchical clustering dendrograms.}
\usage{
plot_hclust(
  data,
  leaf_labels = rownames(data),
  leaf_colors = NULL,
  dist_metric = "euclidean",
  dist_matrix = NULL,
  linkage = "ward.D",
  text_size = 10,
  title = NULL,
  show_plot = F
)
}
\arguments{
\item{data}{Data matrix or data.frame on which to perform hierarchical
clustering.}

\item{leaf_labels}{(Optional) Text labels for leaf nodes (e.g.,
class/outcome labels).}

\item{leaf_colors}{(Optional) Data vector to use for coloring leaf nodes.}

\item{dist_metric}{Distance metric for clustering (see [stats::dist()]).}

\item{dist_matrix}{(Optional) Distance matrix for clustering. Must provide
either \code{dist_metric} or \code{dist_matrix}.}

\item{linkage}{Rype of linkage for hierarchical clustering (see
[stats::hclust()]).}

\item{text_size}{Numeric; size of text for leaf node labels.}

\item{title}{Character string. Title of plot.}

\item{show_plot}{Logical. Should this plot be printed? Default \code{FALSE}.}
}
\value{
A list of three:
\describe{
\item{plot}{A ggplot object of the dendrogram.}
\item{hclust}{Output of [stats::hclust()]}
\item{dend}{Hierarchical clustering dendrogram data. See output of
  [ggdendro::dendro_data()].}
}
}
\description{
Run hierarchical clustering on the given data matrix and
  plot the resulting dendrogram using a pretty theme. Also allows for
  coloring of the leaf nodes.
}
\examples{
out <- plot_hclust(data = iris[, -5], leaf_labels = iris$Species,
                  leaf_colors = iris$Species)
out$plot

}
