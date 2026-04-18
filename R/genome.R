#' Genome class
#'
#' This class stores basic information about a genome,
#' including its name, number of chromosomes, and number of proteins.
#'
#' @slot genome_name the name of the genome
#' @slot num_chromosomes number of chromosomes
#' @slot num_proteins number of proteins
#'
#' @export
setClass(
  "Genome",
  slots = list(
    genome_name = "character",
    num_chromosomes = "numeric",
    num_proteins = "numeric"
  )
)

#' Average proteins per chromosome
#'
#' This function calculates the average number of proteins
#' per chromosome for a Genome object.
#'
#' @param object a Genome object
#' @return the average number of proteins per chromosome (rounded)
#' @export
setGeneric(
  "avgProteinPerCh",
  function(object) standardGeneric("avgProteinPerCh")
)

#' @export
setMethod(
  "avgProteinPerCh",
  "Genome",
  function(object) {
    avg = object@num_proteins / object@num_chromosomes
    return(round(avg))
  }
)

