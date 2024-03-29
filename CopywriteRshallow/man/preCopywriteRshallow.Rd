\name{preCopywriteR_shallow}
\alias{preCopywriteR_shallow}
\title{
CopywriteR_shallow: DNA copy number detection from (low-coverage) whole genome sequencing
}
\description{
preCopywriteR_shallow is used to generate helper files (blacklist, bin region,
GC-content, and mappability .bed files) for the desired bin size from
pre-assembled 1 kb helper files. These binary 1 kb helper files are available at
\url{https://github.com/PeeperLab/CopywriteR} for hg18, hg19, hg38, mm9 and mm10
reference genomes.
}
\usage{
preCopywriteR_shallow(output.folder, bin.size, ref.genome, prefix = "")
}
\arguments{
\item{output.folder}{
the path to the output folder.
}
\item{bin.size}{
desired bin length (in bp) for which helper files should be generated.
}
\item{ref.genome}{
the reference genome for which helper files should be generated, e.g. hg18,
hg19, hg38, mm9 or mm10.
}
\item{prefix}{
the prefix that is used for chromosome notation. Standard notation is "1", "2",
..., "X", "Y". For "chr1", ... notation, use prefix = "chr".
}
}
\details{
Currently helper files can be generated for human (hg18, hg19 and hg38) and
mouse (mm9 and mm10) reference genomes.

Helper files can only be generated for a bin.size that is a multiple of 1000 bp. 
}
\value{
\item{blacklist.rda}{
an R data file containing a GRanges object with blacklisted regions of known
CNVs.
}
\item{GC_mappability.rda}{
an R data file containing a GRanges object with the mappability and GC-content
for bins of the specified size.
}
}
\references{
CopywriteR: DNA copy number detection from off-target sequence data. Thomas
Kuilman, Arno Velds, Kristel Kemper, Marco Ranzani, Lorenzo Bombardelli,
Marlous Hoogstraat, Ekaterina Nevedomskaya, Guotai Xu, Julian de Ruiter,
Martijn P. Lolkema, Bauke Ylstra, Jos Jonkers, Sven Rottenberg, Lodewyk F.
Wessels, David J. Adams, Daniel S. Peeper, Oscar Krijgsman. Submitted for
publication. 
}
\author{
Oscar krijgsman (o.krijgsman@nki.nl)\cr
Thomas Kuilman (t.kuilman@nki.nl)
}
\examples{
\dontrun{
preCopywriteR("/PATH/TO/HG19_1KB_FOLDER/", "./", 20000, "hg19")
}
}