# Scripting-Carcinogenic-Genes-related-to-HNPCC :microscope:
Differential Expression Analysis of Carcinogenic Genes in R language used in a Bioinformatics Experiment

The finishing touch in the Tuxedo workflow, cummerbund, has been used to analyse, manipulate, and visualise the output of cufflinks represented in the database using the ggplot2 package. The data was first analysed at gene level before plotting distributions of expression data for genes, splice isoforms, TSS groups or CDS groups. 

```R
dns <- csDensity(genes(cuff_data))
```

Density plot distribution of expression levels for each sample at gene level. Creating a smoothed density plot for each sample in log10 FPKM values from a cuffdiff run. The log10 of the fragments per kilo-base of transcripts per Million mapped reads of the RNA-seq data quantifies the relative expression of a transcript that is proportional to the number of cDNA fragments that it originates from. This is produced by the csDenisty function which has been stored in the dns object created in the above example code.

```R
sct <- csScatter(genes(cuff_data),'wt','hnpcc')
```

Scatter plot comparing the expression of each gene in two different conditions. CummeRbund scatter plots highlight general similarities and explicit outliers between conditions WT (Wild Type - non-cancerous) and HNPCC (hereditary nonpolyposis colorectal cancer) to display from expression data at gene level. Comparing the FPKM values from the two cuffdiff samples.

```R
vol <- csVolcano(genes(cuff_data),'wt','hnpcc')
```

Volcano plot to inspect differentially expressed genes of fold change against significance for a pairwise comparison of genes and features across two different pairs of samples. Creating a log fold change in expression versus the - log10 (p value) for the pairs of samples plotted in the (x,y) axis. Includes all fields from the features slot in the returned ggplot2 object. Created by the csVolcano function and stored within the created variable (vol).

```R
fpkmSCVPlot(genes(cuff_data))
```
SCV plot to evaluate quality of RNA-seq data by using the squared coefficient of variation (CV) as a normalised measure of cross-replicate variability. CV also known as relative standard deviation (RSD) is a standardised measure of dispersion of a probability/frequency distribution. The distribution is made to conform to the standard. 

 


 
Retrieved from the cuff_data object is all the information on the specific gene and bar plots were then generated to analyse expression levels in the gene of interest, the MLH1 (gene1). At gene level, MLH1 shows slightly greater association in terms of FPKM however with this differs at transcript levels.  It is higher in the HNPCC condition for all isoform samples except for P28502, similarly with TSS22230 and NM_001167619 in the CDS and TSS sites. Moreover, there is constant FPKM in the HNPCC condition as compared to the WT samples. 

 
 
The specific gene of interest MSH2 (gene 2) was analysed from within the cuff_data database object to analyse the data at gene, isoform, TSS and CDS level. However, all presented the same level of FPKM in WT and HNPCC, in which the HNPCC is much greater than the WT, which is near zero. Based on the FPKM values with confidence intervals for the MSH2 gene and its features.
 
 
Similarly MSH6 (gene 3) was analysed from within the cuff_data database object to analyse the data at gene, isoform, TSS and CDS level. MSH2 is displayed at the same level of FPKM value in WT and HNPCC, however, the WT was slightly greater than the HNPCC in all conditions at all sites.
 
 
The selected data from the specified gene PMS1 (gene4) in the generated plots displays expression levels of the gene. Displayed is a slightly greater association in regards to the FPKM of the HNPCC condition, which differs however at transcript level. It is higher in the HNPCC condition for all transcript samples except for P16965 and NM_001128144 in the relevant sites. Additionally, there is some sites of no presence in the WT condition.

 
 
The selected data from the specified gene PMS2 (gene5) in the generated plots also demonstrations similar expression, however, displayed is a much greater association in the FPKM value of PMS2 in the HNPCC condition than WT at gene and transcript level. In which the FPKM value of the WT sample is zero or near zero at all sites of transcripts.
 
 
EPCAM (gene 6) was as expected not greater in FPKM value with the HNPCC condition than WT. It is at gene, isoform, TSS and CDS features precisely the same level, with EPCAM slightly greater in FPKM of WT than the HNPCC in all conditions at all sites. 
