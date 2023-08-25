---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 13 - Inference for non-probability surveys"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 13
title: "Inference for non-probability surveys"
toc: true
type: docs
weight: 13
---

## Introduction

In week 7 we discussed model-assisted survey inference. This week we go one step further and discuss model-based approaches, that also underlie imputation models. As long as we can come up with a statistical model that describes the ‘thing’ we are interested in a good way, we can use that model for making predictions about data that are missing (imputation), or about the population as a whole.  A statistical model is used as the basis for performing inference; inclusion probabilities no longer play a role. 

## Literature
-	Meng, X. L. (2018). Statistical paradises and paradoxes in big data (I): Law of large populations, big data paradox, and the 2016 US presidential election. The Annals of Applied Statistics, 12(2), 685-726.
-	Mercer, A. W., Kreuter, F., Keeter, S., & Stuart, E. A. (2017). Theory and practice in nonprobability surveys: parallels between causal inference and survey inference. Public Opinion Quarterly, 81(S1), 250-271.
-	Valliant, R. (2020) Comparing alternatives for estimation from nonprobability samples. Journal of Survey Statistics and Methodology, 8(20), 231-263


## Lecture
We review the U.S. presidential dataset again. How does one design a good inference model? The Total Survey Error Model is reviewed, with a focus on non-probability based datasets. We discuss several approaches to doing non-probability inference using purely model-based inference, pseudo-likelihood methods, and mass imputation.
[Slides](/files/SDA/week13/lecture_week_13.pdf)

## Class and Take home exercises
Can you model? We introduce a short competition. Who can design the best model? 

[Class Exercise](/files/SDA/week13/class_exercise_week_13.pdf)  
[Survey data](/files/SDA/week13/PEW_nonprob_samples.RDS)  
[Population data](/files/SDA/week13/PEW_population_data.RDS)    
[Mass imputation population](/files/SDA/week13/complete_USA_population_with_matched_survey_results.RDS)  





