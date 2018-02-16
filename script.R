# load CummeRbund package by retrieving files from library
library("cummeRbund")
# set working directory by entering filepath
setwd("filepath")
# create database from cuffdiff output files
cuff_data <- readCufflinks('cuffdiff01')
# or to rebuild backend database once created
cuff_data <- readCufflinks(rebuild = TRUE)
# density plot distrubution of expression levels for each sample at gene level
dns <- csDensity(genes(cuff_data))
# scatter plot comparing the expression of each gene in two different conditions
sct <- csScatter(genes(cuff_data),'wt','carcinogenic')
# volcano plot to inspect diferentially expressed genes 
vol <- csVolcano(genes(cuff_data),'wt','carcinogenic')
# SCV plot to evaluate quality of RNA-seq data by using the squared coefficient of variation as a normalised measure of cross-replicate variability
fpkmSCVPlot(genes(cuff_data))
# Retrieve from cuff_data object all info on specified gene
gene1 <- getGene(cuff_data, 'MLH1')
# bar plots for expression levels in gene of interest - MLH1(gene1)
expressionBarplot(gene1)
expressionBarplot(isoforms(gene1))
expressionBarplot(TSS(gene1))
expressionBarplot(CDS(gene1))
# Retrieve from cuff_data object all info on specified gene
gene2 <- getGene(cuff_data, 'MSH2')
# bar plots for expression levels in gene of interest - MSH2(gene2)
expressionBarplot(gene2)
expressionBarplot(isoforms(gene2))
expressionBarplot(TSS(gene2))
expressionBarplot(CDS(gene2))
# Retrieve from cuff_data object all info on specified gene
gene3 <- getGene(cuff_data, 'MSH6')
# bar plots for expression levels in gene of interest - MSH6(gene3)
expressionBarplot(gene3)
expressionBarplot(isoforms(gene3))
expressionBarplot(TSS(gene3))
expressionBarplot(CDS(gene3))
# bar plots for expression levels in gene of interest - PMS1(gene4)
gene4 <- getGene(cuff_data, 'PMS1')
expressionBarplot(gene4)
expressionBarplot(isoforms(gene4))
expressionBarplot(TSS(gene4))
expressionBarplot(CDS(gene4))
# Retrieve from cuff_data object all info on specified gene
gene5 <- getGene(cuff_data, 'PMS2')
# bar plots for expression levels in gene of interest - PMS2(gene5)
expressionBarplot(gene5)
expressionBarplot(isoforms(gene5))
expressionBarplot(TSS(gene5))
expressionBarplot(CDS(gene5))
# Retrieve from cuff_data object all info on specified gene
gene6 <- getGene(cuff_data, 'EPCAM')
# bar plots for expression levels in gene of interest - EPCAM(gene6)
expressionBarplot(gene6)
expressionBarplot(isoforms(gene6))
expressionBarplot(TSS(gene6))
expressionBarplot(CDS(gene6))

