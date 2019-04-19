context("String length")
library(stringr)

setwd('..')
source("server.R")

test_that("build_rna loads properly", {
  path2TCGAdata <<- Sys.getenv('DATAPATH')
  load(paste0(path2TCGAdata, "BRCA.Rdata"))
  TCGA.mRNAseq = data.frame(cbind(rownames(TCGA.mRNAseq), TCGA.mRNAseq))
  colnames(TCGA.mRNAseq)[1] = "Gene"
  RNA = build_rna(TCGA.mRNAseq, NA, NA, NA)
  expect_equal(dim(RNA), c(20531,0)) 
})