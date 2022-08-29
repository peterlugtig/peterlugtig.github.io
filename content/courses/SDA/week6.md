---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 6 - R practical on svydesign"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 6
title: "R practical on svydesign"
toc: true
type: docs
weight: 6
---

## Introduction

Today, we will practice with using R for doing survey analysis, with a focus on stratified and clustered designs.We will also cover the HT estimator as a way to deal with complex survey designs.

<ins>Before class, make sure to finish the take home exercise of previous week.</ins>

## Literature

There is no new literature for this week. However, if you are behind on the readings from previous weeks, you can use this week to catch up.

## Lecture
There are no new materials, but the slides of this week are used to show how mixes of clustering and stratified designs can be used in practice Apart from specifying the specific survey design using clustering and stratification variables in R, correct inferences can also be done by directly using the inclusion probabilities of sample elements into the survey design. The Horvitz-Thompson estimator formalizes this idea, and can also be used in R directly. You will compute probabilities, and use these in R.

[Slides](/files/SDA/week 6 - R practical/lecture_week_6.pdf)  

## Exercises

[R exercise other statistics](/files/SDA/week 6 - R practical/computing-other-statistics-than-the-mean.pdf)  
[R exercise other statistics solutions](/files/SDA/week 6 - R practical/computing other statistics than the mean.Rmd)  
[R exercise HT estimator](/files/SDA/week 6 - R practical/exercise-probs_designweights.pdf)  
[R exercise HT estimator solutions](/files/SDA/week 6 - R practical/exercise-probs-designweights.Rmd)  
[R exercise stratified cluster](/files/SDA/week 6 - R practical/combinations_of_clusters_stratification.pdf)  
[R exercise stratified cluster solutions](/files/SDA/week 6 - R practical/combinations_of_clusters_stratification.Rmd)  

## Take home exercise
[R exercises](/files/SDA/week 6 - R practical/take_home_exercise_week_6.pdf)  
