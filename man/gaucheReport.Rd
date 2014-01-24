\name{gaucheReport}
\alias{gaucheReport}
\title{View solutions contained within gauche output}
\usage{
gaucheReport(gaucheInput, gaucheOutput, outType = "complete",
  yRange = c(-250, 0), output_file_prefix = "")
}
\arguments{
  \item{gaucheInput}{Raw data analysed by gauche()}

  \item{gaucheOutput}{Object of class ga produced by
  gauche()}

  \item{outType}{Type of output desired - must be one of
  the following:
  "complete","fitness","heatmap","phylogeny","proportion"}

  \item{yRange}{Y-axis range when plotting fitness of
  individuals.  Default is c(-250,0)}

  \item{output_file_prefix}{Optional prefix for all output
  files}
}
\value{
Nothing is returned.
}
\description{
After running gauche() on data, this function provides a
convenient way to view the solutions and also export them
as separate text files and images.  For detailed usage,
please read the accompanying vignette.
}
\details{
This method reports data for the fittest individual; in the
event of there being multiple individuals with identical
fitness, up to five individuals will be reported.  This
function's output is governed by the outType argument. All
options except for the default "complete" value result in
plotting the desired output to the current R session. When
outType=="complete", the following output is created for
each individual: the full length string, the phylogeny
matrix, the proportion matrix, the presence matrix, a
heatmap of the raw data with the assigned clones as
coloured bars at the side, a stacked barplot showing the
proportion of each clone at each timepoint and a plot
showing the phylogenetic relationship between the clones.
Note that the colours of the clones are consistent across
all plots and that the contamination clone (if present) is
always the last clone.  Also produced is a plot
illustrating the change in fitness as the generations
evolved.
}
\examples{
## Load the included synthetic example data
#data("gauche_synth_data")

## Run gauche using 6 clones and default parameters
#solution=gauche(gauche_synth_data, number_of_clones=6)

## Output the solution in the current working directory
#gaucheReport(gauche_synth_data,solution)

## View only the phylogenetic relationship between clones and produce no files
#gaucheReport(gauche_synth_data,solution,outType="phylogeny")
}
\author{
Alex Murison \email{Alexander.Murison@icr.ac.uk} and
Christopher Wardell \email{Christopher.Wardell@icr.ac.uk}
}
\seealso{
\code{\link{ga-class}}, \code{\link{ga}},
\code{\link{gaucheReport}},
\code{\link{gauche_simple_data}},
\code{\link{gauche_hidden_data}},
\code{\link{gauche_synth_data}},
\code{\link{gauche_synth_data_jittered}},
\code{\link{BYB1_G07_pruned}}
}

