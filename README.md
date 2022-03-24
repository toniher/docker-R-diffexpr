# docker-R-diffexpr
Docker R image for differential expression analysis

You can use for:

https://biocorecrg.github.io/PHINDaccess_RNAseq_2020/differential_expression.html


Build Singularity Image:


    singularity build docker-r-diffexpr.sif docker://docker.pkg.github.com/toniher/docker-r-diffexpr/docker-r-diffexpr:latest


Use it:

    singularity shell -e docker-r-diffexpr.sif


