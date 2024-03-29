% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/footnote_marker.R
\name{footnote_marker_number}
\alias{footnote_marker_number}
\alias{footnote_marker_alphabet}
\alias{footnote_marker_symbol}
\title{Footnote marker}
\usage{
footnote_marker_number(x, format, double_escape = FALSE)

footnote_marker_alphabet(x, format, double_escape = FALSE)

footnote_marker_symbol(x, format, double_escape = FALSE)
}
\arguments{
\item{x}{a number. For example, for \code{footnote_marker_alphabet(2)} will
return "b" in HTML.}

\item{format}{Either \code{html} or \code{latex}. All functions here can read
default value from global option \code{knitr.table.format}.}

\item{double_escape}{T/F if output is in LaTeX, whether it should be double
escaped. If you are using footnote_marker in \verb{group_rows`` labeling row or }add_header_above\verb{, you need to set this to be }TRUE`.}
}
\description{
Put footnote mark in superscription in table. Unless you are
using it in the \code{caption} of \code{kable}, you will need to put \code{escape = F}
in \code{kable} (similar with \code{cell_spec}). Again, similar with \code{cell_spec}, the
\code{format} option here can read default value from global option
\code{knitr.table.format}.
}
\examples{
\dontrun{
dt <- mtcars[1:5, 1:5]
colnames(dt)[1] <- paste0("mpg",
                          footnote_marker_alphabet(2))
rownames(dt)[2] <- paste0(rownames(dt)[2],
                          footnote_marker_alphabet(1))
dt[1,2] <- paste0(dt[1,2], footnote_marker_alphabet(3))

kbl(dt, escape = FALSE) |>
  footnote(alphabet = c("Note a", "Note b", "Note c"))
}

}
