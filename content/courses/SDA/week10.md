---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 10 - Missing data I"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 10
title: "Missing data I"
toc: true
type: docs
weight: 10
---

## Introduction

Missing data form a ubiquitous source of problems that most scientists or researchers cannot escape. For example, in survey applications, such as in social sciences or in official statistics, where vast amounts of data are collected, respondents often neglect to answer one or more items. A state of the art solution for this problem is multiple imputation. With imputation, some estimation procedure is used to impute (fill in) each missing datum, resulting in a completed dataset that can be analyzed as if the data were completely observed. When only one value is imputed (single imputation), uncertainty about the imputations is not reflected in the imputed data set and specific methods for variance estimation that take imputed values into account need to be employed. As a more versatile way to solve this, uncertainty about the imputed values can be taken into account by performing multiple imputation (MI). With MI, each missing datum is imputed m times, resulting in m completed datasets. At least 2 imputations are warranted to reflect the uncertainty about the imputations, although performing more imputations is often advisable. The m datasets are then analyzed by standard procedures and the analyses are combined into a single inference.

## Literature

- Chapters 1-3 from S. van Buuren. Flexible Imputation of Missing Data. Second Edition. CRC/Chapman & Hall, FL: Boca Raton, 2018. Freely available from https://stefvanbuuren.name/fimd/

## Lecture
We discuss why multiple imputation is the state of the art technique for drawing valid inferences from incomplete data.

[slides]TBA

## Exercises
R exercise where use the R package mice to multiply impute an incomplete data set. 

TBA

## Take home exercise

TBA


