#### 1. 课前准备 ####
rm(list = ls())
### 安装相关包
# install.packages("harmony")
# install.packages("symphony")
##安装mojaveazure/seurat-disk这个Github包
# if (!requireNamespace("remotes", quietly = TRUE)) {
#   install.packages("remotes")}
# remotes::install_github("mojaveazure/seurat-disk")
#### 2. 导入相关的包 ####
library(symphony)
library(Seurat)
library(tidyverse)
library(SeuratDisk)
setwd(here::here())


#### 3.读取H5AD数据，将其进行格式转换，得到.h5seurat格式文件
Convert("./input/final_fetal_object_cellxgene.h5ad","h5seurat",overwrite = TRUE,assay = "RNA")
scobj <- LoadH5Seurat("./input/final_fetal_object_cellxgene.h5seurat")