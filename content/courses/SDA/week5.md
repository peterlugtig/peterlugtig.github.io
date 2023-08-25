---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 5 - R practical on svydesign"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 5
title: "R practical on svydesign"
toc: true
type: docs
weight: 5
---

## Introduction

Today, we will practice with using R for doing survey analysis, with a focus on stratified and clustered designs.We will also cover the HT estimator as a way to deal with complex survey designs.

## Literature

-	Catch up with any chapters you didn’t read yet.
Optional reading :
-	Lohr (2022) chapters on complex surveys


## Lecture
There are no new materials, but the slides of this week are used to show how mixes of clustering and stratified designs can be used in practice Apart from specifying the specific survey design using clustering and stratification variables in R, correct inferences can also be done by directly using the inclusion probabilities of sample elements into the survey design. The Horvitz-Thompson estimator formalizes this idea, and can also be used in R directly. You will compute probabilities, and use these in R.

[Slides](/files/SDA/week6/lecture_week_6.pdf)  

## Exercises
The efficiency of a sampling design can be expressed by the design effect. We study how this is produced in R, and estimate it for a variety of sampling designs combining clustering and stratification. We will also study the Horvitz-Thompson estimator. Apart from specifying the specific survey design, correct inferences can also be done by directly using the inclusion probabilities of sample elements into the survey design. You will compute probabilities, and use these in R. 

[data](/files/SDA/week6/boys.RDS)  
[Class exercise](/files/SDA/week6/class_exercise_week_6.pdf)  
[Class exercise solutions](/files/SDA/week6/class_exercise_week_6.Rmd)  

## Take home exercise
Further exercises on complex sampling designs (multistage)
[R exercises](/files/SDA/week6/take_home_exercise_week_6.pdf)  
