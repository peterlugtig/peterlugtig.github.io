---
date: "2018-09-09T00:00:00Z"
draft: false
lastmod: "2018-09-09T00:00:00Z"
linktitle: Survey Data Analysis (MSBBSS01)
menu:
  example:
    name: Survey Data Analysis
    weight: 1
summary: "This course aims to give students a firm introduction in three broad, and related topics: (1) inference - how do we use small sets of data to produce knowledge about the world around us; (2) survey data analysis, in particular sampling and analyzing complex datasets; (3) survey design - why are surveys designed the way they are? The focus here is on the overall design of a study, not on the design of individual survey questions."
title: Survey Data Analysis
toc: true
type: docs
weight: 1
---

## Contact details of instructors

All instructors are based at the:

- Department of Methodology and Statistics | Utrecht University
- Postal address: Postbus 80.140, 3508 TC Utrecht
- Visiting address: Padualaan 14, 3584 CH Utrecht

The instructors may be in their office, but it helps to e-mail first and make an appointment.

For all matters related to the administration and organization of the course, as well as grades, please contact [p.lugtig@uu.nl](mailto:p.lugtig@uu.nl), call: 030-2537761 or stop by in office A.130. Peter is usually around Monday-Friday 09:00-17:00.

If you have questions about course materials, please contact the instructor who is teaching that week (see the schedule below):

| Instructor | Email | Availability |
| -----------| ----- | ------------ |
| Peter Lugtig | [p.lugtig@uu.nl](mailto:p.lugtig@uu.nl) | office A.103 Mo-Fri |
| Stef van Buuren | [s.vanbuuren@uu.nl](mailto:s.vanbuuren@uu.nl) | office C.119 Mo |
| Gerko Vink | [g.vink@uu.nl](mailto:g.vink@uu.nl) | office C.124 Mo-Fri |
| Bella Struminskaya | [b.struminskaya@uu.nl](mailto:b.struminskaya@uu.nl) | office C.116 Mo-Fri |
| Vera Toepoel | [v.toepoel@uu.nl](mailto:v.toepoel@uu.nl) | office C.116 Mo, Thu |







## Course Content

This course aims to give students a firm introduction in three broad, and related topics:

-	Inference: how do we use small sets of data to produce knowledge about the world around us?

-	Survey data analysis, in particular sampling and analyzing complex datasets: Sampling data is an important element of many statistical techniques. Understanding different ways to sample data is important not only for understanding how we can efficiently design a survey, but also for understanding more complex statistical techniques discussed later in the Research Master MSBBSS. Datasets that are generated with a particular sampling mechanism need to include that mechanism in their analysis. Also, surveys normally suffer from nonresponse and missing data more generally. The course discusses in some detail how to deal with complex sampling designs and missing data in carrying out statistical analyses. 

-	Survey design: why are surveys designed the way they are? We here focus on the overall design of a study, not on the design of individual survey questions.

Inference is a key goal of almost any scientific project. How does a test with a new drug generalize to how the drug works for everyone? How do tests for Covid-19 with patients with health complaints (cold, fever) in a region generalize to the stage of the Covid-19 epidemic nationwide? How do polls about future voting behavior in the U.S. presidential election predict the outcome of that election? 

Inference is something you do every day. When you take one bite of your pizza, the taste of that one piece will tell you how nice the pizza is going to be. But you can perhaps imagine that testing whether a drug ‘works’, or who will become the next U.S. president is perhaps more complex. We will focus on discussing ways to do sampling (selecting what part(s) of the pizza to taste) in an efficient way given your target population and research question. We will also discuss where sampling breaks down: in some cases, you have data at your disposal (e.g., social media posts) that are perhaps useful to understand how individuals think about a topic, but how do you use your sample in this case to say something about how the general population thinks about a topic. And in case you have a choice, would you in the 21st century rather use a small random sample that suffers from various problems (high nonresponse rates) and is costly, or a large amount of less costly twitter data to study political opinions. This is what we focus on when we will be discussing inference. 

We will also study in more detail how to sample in practice. Sampling does not only play a role in inference from a small dataset to a population, but there are many techniques in statistics, such as bootstrapping that rely on sampling and resampling techniques. In survey research, sampling techniques are used to obtain a sample that is efficient (as small as possible), but large enough to actually allow for inference. Apart from statistical efficiency, we also have to deal with real-world practical issues in sampling. Sometimes, populations (e.g., schoolchildren) can only be sampled via schools (we call this a cluster). Costs are also important. Rather than studying patients all across the country it is less costly (and just much easier), to restrict a study to just a few hospitals, and infer what would have happened had the drug also been administered to patients in other hospitals.

Statistical methods for analyzing survey data will be discussed from a design-based perspective, where the only source of random variation is induced by the sampling mechanism. The basic techniques of survey sampling will be discussed; simple random sampling, stratification, cluster and multi-stage sampling, and probability proportional to size sampling. 

In real life, studies will almost always suffer from missing data. Either respondents cannot or do not want to participate in a study (unit nonresponse), or only participate in some parts of the study (item nonresponse). In both cases, those missing data bring a risk that bias is introduced in the process of inference. In the second part of the course we will discuss two methods on how to deal with missing data (weighting and imputation) in detail. 

Throughout the course, practical exercises are conducted using the software package R. This course considers the nature of various general methods, the supporting statistical theory, but also practical applications. The R-packages survey, sampling and mice will be used for statistical computations and are part of the course material. 

The course is presented at a moderately advanced statistical level. Mathematical aspects of sampling theory will not be developed, but statistical notation and some small algebraic derivations will be discussed occasionally. Understanding of applied statistics is necessary, which includes a basic understanding of linear regression and ANOVA. The course builds on materials discussed in the other courses offered in the first semester of the Research Master Methodology and Statistics for the Social, Behavioural and Biomedical Sciences.

## Aims of the course

By the end of the course students will:

-	Obtain knowledge and skills in designing and applying survey research methods
-	Understand the most important elements of design-based and model-based inference
-	Understand trade-offs between bias, variance, and costs of survey sampling designs
-	Understand the impact of survey design features on survey error and survey bias
-	Obtain knowledge on survey data collection methods 
-	Apply the understanding of the methods discussed in the course to critically analyse an existing complex survey data survey 
-	Understand how to perform the analysis in cases of missing data (item and unit-nonresponse)
-	Analyze survey data using the statistical software R
-	Present the findings from survey analysis conducted in R in form of a research paper and presentation.

