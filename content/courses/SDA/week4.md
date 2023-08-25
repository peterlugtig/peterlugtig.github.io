---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 4 - Stratified and cluster sampling"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 4
title: "Stratified and cluster sampling"
toc: true
type: docs
weight: 4
---

## Introduction

In practice, real surveys seldomly use a simple random sampling design. We will discuss why stratification is often used to make the sample more efficient (allowing smaller samples), and why clustering is used to limit survey costs.

## Literature 

- Stuart (1984) p. 35-71
-	Neyman (1934)

Optional:
- Lohr, S. (2022), Sampling: design and analysis, chapter 3 (stratified sampling) and 5 (cluster sampling)

## Lecture
We start by discussing the Take home exercise. After this, we illustrate the benefits of stratification for survey efficiency and clustering for survey costs using example data. 
[Slides](/files/SDA/week5/lecture_week_4.pdf)

[simulation stratified design](/files/SDA/week4/simulate_grade_data_stratified.R)

[simulation cluster design](/files/SDA/week4/simulate_grade_data_clustering.R)

## Class exercise
Specify a stratified and clustering design in R

[data](/files/SDA/week4/boys.RDS)   
[R exercises](/files/SDA/week4/class_exercise_week_4.pdf)  
[R exercise solutions](/files/SDA/week4/class_exercise_week_4.Rmd)

[R exercise complete answers](/files/SDA/week4/class_exercise_week_4_complete.Rmd)

## Take home exercise
Review the survey documentation of your adopted design-based survey (see week 2). Work out the sampling design on paper (not in R!), and bring the results to class.
[R exercises](/files/SDA/week4/take_home_exercise_week_4.pdf)
