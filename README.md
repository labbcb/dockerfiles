# Docker application images for bioinformatics tools

This repository contains several _Dockerfile_ for building Docker container images of bioinformatics tools (read filtering and alignment, feature count, R and Bioconductor).
Each directory for one tool.
Inside each directory there are many directories representing a tool version.
The version must be equal to tool version defined in Dockerfile.
Dockerfiles are tagged according to tool version.

| Tool          | Description                                                                                                       |
| ------------- | ----------------------------------------------------------------------------------------------------------------- |
| admixture     | Software tool for maximum likelihood estimation of individual ancestries from multilocus SNP genotype datasets    |
| bcl2fastq     | Demultiplexes data and converts BCL files generated by Illumina sequencing systems to standard FASTQ file formats |
| Bioconductor  | Provides tools for the analysis and comprehension of high- throughput genomic data                                |
| Bismark       | Maps bisulfite treated sequencing reads to a genome of interest and perform methylation calls in a single step    |
| Bowtie        | An ultrafast, memory-efficient short read aligner                                                                 |
| Bowtie 2      | An ultrafast and memory-efficient tool for aligning sequencing reads to long reference sequences                  |
| BWA           | Burrows-Wheeler Aligner                                                                                           |
| Cutadapt      | Removes adapter sequences from sequencing reads                                                                   |
| FastQC        | A quality control tool for high throughput sequence data                                                          |
| fineSTRUCTURE | Fast and powerful algorithm for identifying population structure using dense sequencing data                      |
| GATK          | Genome Analysis Toolkit - Variant Discovery in High-Throughput Sequencing Data                                    |
| HTSeq         | Counting reads in features                                                                                        |
| Reaper        | Program for demultiplexing, trimming and filtering short read sequencing data                                     |
| Picard        | A set of command line tools for manipulating high-throughput sequencing data                                      |
| Plink         | Whole genome association analysis toolset                                                                         |
| R             | Language and environment for statistical computing and graphics                                                   |
| Rqc           | Quality Control Tool for High-Throughput Sequencing Data                                                          |
| Samtools      | Reading/writing/editing/indexing/viewing SAM/BAM/CRAM format                                                      |
| Shapeit2      | Fast and accurate method for estimation of haplotypes (aka phasing) from genotype or sequencing data              |
| STAR          | RNA-seq aligner                                                                                                   |
| featureCounts | Counting reads to genomic features such as genes, exons, promoters and genomic bins                               |
| TrimGalore!   | A wrapper tool around Cutadapt and FastQC to consistently apply quality and adapter trimming to FastQ files       |
| VCFTools      | Program package designed for working with VCF files                                                               |


Build  Docker images and push to DockerHub

The command below builds and pushes Docker images to DockerHub.
Images are tagged with tool versions.

```bash
bash build_images.sh
```