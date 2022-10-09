---
date: "`r Sys.Date()`"
draft: false
linktitle: "Week 3 - Simple random sampling"
menu:
  SDA:
    parent: Survey Data Analysis
    weight: 3
title: "Simple random sampling"
toc: true
type: docs
weight: 3
---

## Introduction

Under a design-based model for inference, the process of drawing a sample is important. It is also the part of the research cycle that is entirely under the control of the researcher; nonresponse for example is much less so. Sampling is an important element of statistics and is therefore discussed in some detail in this course. In this week we focus on the most fundamental sampling principle, where every element of the population has an equal, non-zero chance of being selected into the sample.

<ins>

Before class, make sure to finish the take home exercise from the previous week. Bring the results to class.

</ins>

## Literature

-   Stuart (1984) until page 34

## Lecture

In the lecture we will review the basic idea of simple random sampling. We discuss sampling with/without replacement and their effects. We will also discuss the population size (finite population), and introduce the idea of estimators. Finally, we will introduce the idea of power analysis using the standard error/margin of error/coefficient of variation. One of the crucial steps in survey design is establishing how many sample units need to included in a sample. Power analysis is often done assuming a sample is a Simple Random Sample. [Slides](/files/SDA/week3/lecture_week_3.pdf)

## Class exercise

Drawing samples in R. We will discuss the basic idea of sampling, and how this can be done in R. The results from everyone's sample will be used to produce a sampling distribution that will be used to illustrate the concepts of bias and error again

## Take home exercise

Statistical software packages assume that the data you use reflect a simple random sample and it is not necessary to tell the software how you drew the sample. In later weeks in the course, when we discuss more complex sampling procedures, you need to "tell" the software what sampling design you used. You will practice with specifying a general survey design in R using the data you generated in the class exercise.   

[R exercises](/files/SDA/week3/take_home_exercise_week3.pdf)   
[R exercise solutions](/files/SDA/week3/take_home_exercise_week3.Rmd)   
[Dataset](/files/SDA/week3/boys.RDS)
