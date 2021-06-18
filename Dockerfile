FROM bioconductor/bioconductor_docker

RUN Rscript -e "install.packages(pkgs = c('tidyverse', \ 
                                          'RColorBrewer', \
                                          'data.table', \
                                          'cowplot', \
                                          'rmarkdown', \
                                          'uwot', \
                                          'BiocManager'), \
                                        repos='https://cran.revolutionanalytics.com/', \
                                        dependencies=TRUE, \
                                        clean = TRUE)"

RUN Rscript -e "BiocManager::install('ggtree')"
RUN Rscript -e "BiocManager::install('ComplexHeatmap')"
RUN Rscript -e "BiocManager::install('IRanges')"
RUN Rscript -e "BiocManager::install('GenomicRanges')"

RUN Rscript -e "library(devtools); install_github('caravagna/pio')"
RUN Rscript -e "library(devtools); install_github('caravagna/easypar')"
RUN Rscript -e "library(devtools); install_github('caravagnalab/mobster')"
RUN Rscript -e "library(devtools); install_github('caravagnalab/VIBER')"
RUN Rscript -e "library(devtools); install_github('VPetukhov/ggrastr')"
RUN Rscript -e "library(devtools); install_github('shahcompbio/schnapps')"
