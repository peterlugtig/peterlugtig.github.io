---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 7 - Nonresponse and weighting"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 7
title: "Nonresponse and weighting"
toc: true
type: docs
weight: 7
---

## Introduction

Every survey suffers from nonresponse. Nonresponse rates are often large and are thought to be often the largest source of survey error. As long as information for the entire population or sample is available, nonresponse error can to some degree be assessed and adjusted for.

## Literature

-	de Leeuw, E., Hox, J., & Luiten, A. (2018). International nonresponse trends across countries and years: an analysis of 36 years of Labour Force Survey data. Survey Methods: Insights from the Field, 1-11.
-	Kalton, G., & Flores-Cervantes, I. (2003). Weighting methods. Journal of official statistics, 19(2), 81.

#### Optional readings

-	Bethlehem, J. G., & Keller, W. J. (1987). Linear weighting of sample survey data. Journal of official Statistics, 3(2), 141-153.
-	Lynn (1996) Weighting for nonresponse. Survey and Statistical Computing 1996, edited by R. Banks
-	West, B. T., Sakshaug, J. W., & Aurelien, G. A. S. (2016). How big of a problem is analytic error in secondary analyses of survey data?. PloS one, 11(6), e0158120.

## Lecture
We discuss how nonresponse can be assessed and nonresponse correction factors (weights) can be computed based on either target population or sample frame data. We discuss weighting by poststratification, linear weighting and raking. 
[Slides](/files/SDA/week8/lecture_week_8.pdf)  

## Class exercise
R exercise to work with Nonresponse weights: In this exercise you learn how to work with existing nonresponse weights in R using the survey package.
[R exercise weighting](/files/SDA/week7/class_exercise_week_7.pdf)  
[R exercise weighting solutions](/files/SDA/week7/class_exercise_week_7.Rmd)  
[data for R exercise](/files/SDA/week7/ESSR5_HUSK.RDS)  

## Take home exercise
Finish the class exercises.


