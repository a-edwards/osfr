% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/osf_ls_files.R
\name{osf_ls_files}
\alias{osf_ls_files}
\title{List files and directories on OSF}
\usage{
osf_ls_files(
  x,
  path = NULL,
  type = "any",
  pattern = NULL,
  n_max = 10,
  verbose = FALSE
)
}
\arguments{
\item{x}{One of the following:
\itemize{
\item An \code{\link{osf_tbl_node}} with a single project or component.
\item An \code{\link{osf_tbl_file}} with a single directory.
}}

\item{path}{List files within the specified subdirectory path.}

\item{type}{Filter query by type. Set to \code{"file"} to list only files, or
\code{"folder"}to list only folders}

\item{pattern}{Character string used to filter for results that contain the
substring \code{"pattern"} in their name. \emph{Note:} this is a fixed, case-insensitive
search.}

\item{n_max}{Maximum number of results to return from OSF (default is 10).
Set to \code{Inf} to return \emph{all} results.}

\item{verbose}{Logical, indicating whether to print informative messages
about interactions with the OSF API (default \code{FALSE}).}
}
\value{
An \code{\link{osf_tbl_file}} with one row for each file or directory, ordered
by modification time.
}
\description{
List the files and directories in the top-level of an OSF project, component,
or directory. Specify a \code{path} to list the contents of a particular
subdirectory.
}
\examples{
\dontrun{
# Retrieve the Psychology Reproducibility Project from OSF
psych_rp <- osf_retrieve_node("ezum7")

# List all files and directories
osf_ls_files(psych_rp)

# ...only the directories
osf_ls_files(psych_rp, type = "folder")

# ...only PDF files
osf_ls_files(psych_rp, type = "file", pattern = "pdf")

# List the contents of the first directory
osf_ls_files(psych_rp, path = "RPP_SI_Figures")
}
}
\seealso{
\code{\link[=osf_ls_nodes]{osf_ls_nodes()}} to generate a list of projects and components.
}
