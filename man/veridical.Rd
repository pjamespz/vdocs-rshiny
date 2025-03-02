% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/veridical.R
\name{veridical}
\alias{veridical}
\title{veridical design - bootstrap HTML output format}
\usage{
veridical(
  fig_width = 10,
  fig_height = 8,
  number_sections = FALSE,
  code_folding = "hide",
  code_download = TRUE,
  use_bookdown = TRUE,
  includes = NULL,
  css = NULL,
  fig_caption = TRUE,
  highlight = "kate",
  lightbox = TRUE,
  thumbnails = TRUE,
  gallery = FALSE,
  cards = TRUE,
  pandoc_args = NULL,
  md_extensions = NULL,
  mathjax = "rmdformats",
  ...
)
}
\arguments{
\item{fig_width}{Default width (in inches) for figures}

\item{fig_height}{Default width (in inches) for figures}

\item{number_sections}{\code{TRUE} to number section headings}

\item{code_folding}{Enable document readers to toggle the display of R code
chunks. Specify \code{"none"} to display all code chunks (assuming
they were knit with \code{echo = TRUE}). Specify \code{"hide"} to hide all R
code chunks by default (users can show hidden code chunks either
individually or document-wide). Specify \code{"show"} to show all R code
chunks by default.}

\item{code_download}{Embed the Rmd source code within the document and provide
a link that can be used by readers to download the code.}

\item{use_bookdown}{if TRUE, uses \code{\link[bookdown]{html_document2}} instead of \code{\link[rmarkdown]{html_document}}, thus providing numbered sections and cross references}

\item{includes}{Named list of additional content to include within the
document (typically created using the \code{\link[rmarkdown]{includes}} function).}

\item{css}{CSS and/or Sass files to include. Files with an extension of .sass
or .scss are compiled to CSS via \code{sass::sass()}. Also, if \code{theme} is a
\code{\link[bslib:bs_theme]{bslib::bs_theme()}} object, Sass code may reference the relevant Bootstrap
Sass variables, functions, mixins, etc.}

\item{fig_caption}{\code{TRUE} to render figures with captions}

\item{highlight}{Syntax highlighting style. Supported styles include
"default", "tango", "pygments", "kate", "monochrome", "espresso",
"zenburn", "haddock", and "textmate". Pass \code{NULL} to prevent syntax
highlighting.}

\item{lightbox}{if TRUE, add lightbox effect to content images}

\item{thumbnails}{if TRUE display content images as thumbnails}

\item{gallery}{if TRUE and lightbox is TRUE, add a gallery navigation between images in lightbox display}

\item{cards}{if TRUE, sections will be presented as distinct and animated cards}

\item{pandoc_args}{arguments passed to the pandoc_args argument of rmarkdown \code{\link[rmarkdown]{html_document}}}

\item{md_extensions}{arguments passed to the md_extensions argument of rmarkdown \code{\link[rmarkdown]{html_document}}}

\item{mathjax}{set to NULL to disable Mathjax insertion}

\item{...}{Additional function arguments passed to `vthemes::vmodern()`.}
}
\value{
R Markdown output format to pass to \code{\link[rmarkdown]{render}}
}
\description{
Format for converting from R Markdown to an HTML document
  using the veridical design theme. The veridical theme is a wrapper around
  the vmodern design theme from the `vthemes` R package with the difference
  that the veridical theme is tailored specifically for the PCS lab
  notebook and thus adds interactive capabilities such as clickable
  checkboxes, editable textboxes, and collapsible tips. Note that the vmodern
  design theme and hence the veridical design theme are largely based upon
  the material design theme from the `rmdformats` R package. See
  \url{https://github.com/juba/rmdformats} for the source code.
}
\details{
JavaScript and CSS taken and adapted from the Material design theme
for Bootstrap 3 project : \url{https://github.com/FezVrasta/bootstrap-material-design}.
}
