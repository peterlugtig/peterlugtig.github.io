---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 6 - Model assisted survey estimation"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 6
title: "Model assisted survey estimation"
toc: true
type: docs
weight: 6
---

## Introduction

Topic: We discuss two popular estimation methods that are often used in cluster and multistage sampling designs: Ratio and Regression estimation. The goal of these estimation methods is to make the estimation of a statistic of interest (e.g. mean) more efficient by using auxiliary variables. Inference is here not only using the inclusion probabilities anymore, but inference is being assisted by the use of a statistical model. We introduce the idea of model-assisted inference. 	


## Literature

- Stuart (1984) 71-90
-	Lohr chapters 4 & 7 (note: esp. chapter 7 is really useful)

-	Preparation for class discussion: find out what auxiliary data (at the sample level) is available for the survey you reviewed in earlier weeks, and bring a list of auxiliary data to class. Think about the following question (after reading the literature): would it be a good idea for your survey to use ratio/regression estimation if you are interested in estimating one of the variables of interest in your survey? 

## Lecture
We discuss a practical and fictitious example where data are clustered to illustrate why ratio/regression estimation is sometimes so attractive. The bias-variance trade-off as a concept is discussed and illustrated.  
[Slides](/files/SDA/week6/lecture_week_6.pdf)  

## Class exercises
Class discussion on design-based vs. model assisted and model-based estimation

## Take home exercise 
Set up a ratio and/or regression estimation model for a cluster sample dataset	

[R Class exercise](/files/SDA/week6/class_exercise_week_6.pdf)  
[R class exercise solutions](/files/SDA/week6/class_exercise_week_6.Rmd) 


