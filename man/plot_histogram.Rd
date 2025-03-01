% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots-ggplot-wrappers.R
\name{plot_histogram}
\alias{plot_histogram}
\title{Plot pretty histogram plots using custom ggplot theme.}
\usage{
plot_histogram(
  data,
  x_str = NULL,
  fill_str = NULL,
  fill = "#6FBBE3",
  bins = 12,
  theme_options = NULL,
  show_plot = FALSE,
  ...
)
}
\arguments{
\item{data}{Data frame to use for plot.}

\item{x_str}{Character string. Name of variable in \code{data} to plot on
x-axis. If \code{NULL}, plot density using all values in data frame.}

\item{fill_str}{Character string (optional). Name of variable in \code{data}
to use as fill aesthetic in plot.}

\item{fill}{Fill color. Used only if \code{fill_str} is \code{NULL}.}

\item{bins}{Number of histogram bins.}

\item{theme_options}{(Optional) list of arguments to pass to
vthemes::theme_vmodern().}

\item{show_plot}{Logical. Should this plot be printed? Default \code{FALSE}.}

\item{...}{Other arguments to pass to [ggplot2::geom_histogram()].}
}
\value{
A ggplot histogram.
}
\description{
Wrapper around [ggplot2::geom_histogram()] that plots pretty
  histogram plots using a custom ggplot theme.
}
\examples{
## plot distribution of all data in data frame
plot_histogram(as.data.frame(rnorm(1000), nrow = 100))
## plot distribution of a single column in data frame
plot_histogram(iris, x_str = "Sepal.Width")
plot_histogram(iris, x_str = "Sepal.Width", fill_str = "Species")

}
\seealso{
Other pretty_ggplot_wrappers: 
\code{\link{plot_bar}()},
\code{\link{plot_boxplot}()},
\code{\link{plot_density}()},
\code{\link{plot_line}()},
\code{\link{plot_point}()}
}
\concept{pretty_ggplot_wrappers}
