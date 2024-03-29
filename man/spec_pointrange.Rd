% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mini_plots.R
\name{spec_pointrange}
\alias{spec_pointrange}
\title{Helper functions to generate inline sparklines}
\usage{
spec_pointrange(
  x,
  xmin,
  xmax,
  vline = NULL,
  width = 200,
  height = 50,
  res = 300,
  same_lim = TRUE,
  lim = NULL,
  xaxt = "n",
  yaxt = "n",
  ann = FALSE,
  col = "red",
  line_col = "black",
  cex = 0.3,
  frame.plot = FALSE,
  dir = if (is_latex()) rmd_files_dir() else tempdir(),
  file = NULL,
  file_type = if (is_latex()) "pdf" else svglite::svglite,
  ...
)
}
\arguments{
\item{x, xmin, xmax}{A scalar value or List of scalar values for dot, left
and right error bar.}

\item{vline}{A scalar value for where to draw a vertical line.}

\item{width}{The width of the plot in pixel}

\item{height}{The height of the plot in pixel}

\item{res}{The resolution of the plot. Default is 300.}

\item{same_lim}{T/F. If x is a list of vectors, should all the plots be
plotted in the same range? Default is True.}

\item{lim}{Manually specify plotting range in the form of
\code{c(0, 10)}.}

\item{xaxt}{On/Off for xaxis text}

\item{yaxt}{On/Off for yaxis text}

\item{ann}{On/Off for annotations (titles and axis titles)}

\item{col}{Color for mean dot.}

\item{line_col}{Color for the line and the error bar.}

\item{cex}{size of the mean dot and error bar size.}

\item{frame.plot}{T/F for whether to plot the plot frames.}

\item{dir}{Directory of where the images will be saved.}

\item{file}{File name. If not provided, a random name will be used}

\item{file_type}{Graphic device. Can be character (e.g., \code{"pdf"})
or a graphics device function (\code{grDevices::pdf}). This defaults
to \code{"pdf"} if the rendering is in LaTeX and \code{"svg"} otherwise.
for HTML output}

\item{...}{extra parameters sending to \code{hist()}}
}
\description{
These functions helps you quickly generate sets of sparkline
style plots using base R plotting system. Currently, we support histogram,
boxplot, line, scatter and pointrange plots. You can use them together with
\code{column_spec} to generate inline plot in tables. By default, this function
will save images in a folder called "kableExtra" and return the address of
the file.
}
