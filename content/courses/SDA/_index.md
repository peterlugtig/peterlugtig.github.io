---
date: "July 04, 2021"
draft: false
lastmod: "July 04, 2021"
linktitle: Survey Data Analysis (MSBBSS01)
menu:
  SDA:
    name: Survey Data Analysis
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

For all matters related to the administration and organization of the course, as well as grades, please contact [p.lugtig@uu.nl](mailto:p.lugtig@uu.nl).

If you have questions about course materials, please contact the instructor who is teaching that week (see the schedule below):

| Instructor | Email | Availability |
| -----------| ----- | ------------ |
| Peter Lugtig | [p.lugtig@uu.nl](mailto:p.lugtig@uu.nl) | office A.103 Mo-Fri |
| Stef van Buuren | [s.vanbuuren@uu.nl](mailto:s.vanbuuren@uu.nl) | office C.119 Mo |
| Gerko Vink | [g.vink@uu.nl](mailto:g.vink@uu.nl) | office C.124 Mo-Fri |
| Bella Struminskaya | [b.struminskaya@uu.nl](mailto:b.struminskaya@uu.nl) | office C.116 Mo-Fri |




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

-	Obtain knowledge and skills in designing and applying survey research methods;
-	Understand the most important elements of design-based and model-based inference;
-	Understand trade-offs between bias, variance, and costs of survey sampling designs;
-	Understand the impact of survey design features on survey error and survey bias;
-	Obtain knowledge on survey data collection methods;
-	Apply the understanding of the methods discussed in the course to critically analyse an existing complex survey data survey;
-	Understand how to perform the analysis in cases of missing data (item and unit-nonresponse);
-	Analyze survey data using the statistical software R;
-	Present the findings from survey analysis conducted in R in form of a research paper and presentation.

## Literature

<ins>Books Weeks 1-9:</ins>

- Stuart, Alan (1984). The ideas of sampling. Available online. Do not buy this book before the course starts and wait for instructions on how to obtain it.

<ins>Book for missing data (weeks 46,47)</ins>

- Van Buuren, Stef (2018). [Flexible Imputation of Missing Data](https://stefvanbuuren.name/publication/2018-01-01_vanbuuuren2018/). CRC/Chapman & Hall, FL: Boca Raton. Freely available from [https://stefvanbuuren.name/fimd/](https://stefvanbuuren.name/fimd/).

<ins>Articles to be used throughout the course:</ins>

All articles below are available by searching for the title in a search engine for academic publications. Doing so from within the UU-domain will show direct links. [www.scholar.google.com](https://www.scholar.google.com) is the teacher's favorite search engine.All articles below are available by searching for the title in a search engine for academic publications. Doing so from within the UU-domain will show direct links. www.scholar.google.com is the teacher’s favorite search engine.

1.	Biemer, P. P. (2010). Total survey error: Design, implementation, and evaluation. Public Opinion Quarterly, 74(5), 817-848.
2.	Groves, R. M., & Lyberg, L. (2010). Total survey error: Past, present, and future. Public opinion quarterly, 74(5), 849-879.
3.	Lynn (1996) Weighting for nonresponse. Survey and Statistical Computing 1996, edited by R. Banks
4.	Kalton, G., & Flores-Cervantes, I. (2003). Weighting methods. Journal of official statistics, 19(2), 81.
5.	Brick, J. M. (2013). Unit nonresponse and weighting adjustments: A critical review. Journal of Official Statistics, 29(3), 329-353.
6.	de Leeuw, E., Hox, J., & Luiten, A. (2018). International nonresponse trends across countries and years: an analysis of 36 years of Labour Force Survey data. Survey Methods: Insights from the Field, 1-11.
7.	Kreuter, F. (2013). Improving surveys with paradata: Introduction. Improving surveys with paradata: Analytic uses of process information, 1-9.
8.	Cornesse, C., Blom, A. G., Dutwin, D., Krosnick, J. A., De Leeuw, E. D., Legleye, S., ... & Struminskaya, B. (2020). A Review of Conceptual Approaches and Empirical Evidence on Probability and Nonprobability Sample Survey Research. Journal of Survey Statistics and Methodology.
9.	Meng, X. L. (2018). Statistical paradises and paradoxes in big data (I): Law of large populations, big data paradox, and the 2016 US presidential election. The Annals of Applied Statistics, 12(2), 685-726.
10.	Mercer, A. W., Kreuter, F., Keeter, S., & Stuart, E. A. (2017). Theory and practice in nonprobability surveys: parallels between causal inference and survey inference. Public Opinion Quarterly, 81(S1), 250-271.
11.	Biemer Paul B., Edith de Leeuw Stephanie Eckman Brad Edwards Frauke Kreuter Lars E. Lyberg N. Clyde Tucker Brady T. West (eds.) (2017). Total Survey Error in Practice. Chapters 3 “Big Data: A Survey Research Perspective” and 2 “Total Twitter Error”. John Wiley & Sons. Available through UU library (DOI:10.1002/9781119041702)
12.	De Leeuw, E.D. (2018). Mixed-Mode: Past, Present, and Future. Survey Research Methods, 12, 2, 75-89. https://ojs.ub.uni-konstanz.de/srm/article/view/7402/6582
13.	Toepoel, de Leeuw & Hox (2019). Single- and mixed-mode survey data collection. Sage Research Methods foundations (on blackboard)
14.	Kolenikov, S., & Kennedy, C. (2014). Evaluating Three Approaches to Statistically Adjust for Mode Effects. Journal of Survey Statistics and Methodology, 2(2). 

<ins>Additional literature (to get more in-depth information during or after the course)</ins>

- Lohr, Sharon (2009). Sampling: Design and Analysis (2nd ed.). Boston: Brooks/Cole.

This book should be available for under $50. There are 2 versions of the 2nd edition (an alternative version published by Taylor & Francis); both are identical. Datasets and code (in `R`) referenced in the book are available through: [https://www.sharonlohr.com/sampling-design-and-analysis](https://www.sharonlohr.com/sampling-design-and-analysis).

## Preparation and course structure

The study load for this course is 210 hours (28 hours per EC). There are 15 weeks (week 37-51 with a class-free in week 43) with meetings in which we expect the average workload per week to be 12 hours. The remaining 30 hours should be spent preparing for the course, and/or finishing the final report after week 51. Some students may not need to prepare for the course, and some students will probably not need to work on the final report after week 51.

## Expected time investment

The course load is expected to be 12 hours per week on average. Every week has a 3-hour in-person meeting. These meetings will generally combine a lecture (approx. 75 min) a break (15 min), and one or more class exercises (90 minutes). Before every lecture, students need to: (1) read articles and/or book chapters in some detail (3 hours), and (2) prepare a take home exercise (2 hours), while sometimes, class exercises will need to be finished or reviewed prior to the meeting (1 hour). The remaining 3 hours per week are to be spent on preparing and reviewing class materials for the exam (week 45), or working on the final assignment (week 51). Please note that these time estimates are average estimates. They may vary by person or by week.

Students are expected to read the literature before attending the respective meeting. Please plan the time to actually do this. Meetings will be much more productive and reach a higher level if everyone comes prepared for the meeting.

All course materials will be available on the course website: [www.peterlugtig.com/courses/SDA]. The schedule (including rooms) can be found on Blackboard. In case there are last minute changes to the meeting (e.g. because of illness, or important updates to course materials), announcements will be sent via e-mail to your @students.uu.nl address. It is thus important to check your e-mail regularly.

## The impact of Covid-19 on the course

Normally, teaching happens physically. In 2020, the course was organized fully online, but the idea (as of spring 2021!) is to deliver the course in person. We will however occasionally use Microsoft Teams to meet up in (sub) groups, especially in the 2nd half of the course. 

This is usually about the point where most students have stopped reading the course manual, and search for the grading and homework sections. If you do end up actually reading this sentence (good on you!) please send me a picture of some ice cream. You will find out later what happens.

## Links

<ins>Software</ins>

- [Microsoft Teams](https://www.microsoft.com/nl-be/microsoft-365/microsoft-teams/download-app)
- [R](http://cran.r-project.org)
- [RStudio](http://www.rstudio.com/)
- [Survey Package](http://cran.r-project.org/web/packages/survey/index.html)
- [Sampling Package](http://cran.r-project.org/web/packages/sampling/index.html)
- [MICE package](www.cran.r-project.org/web/packages/mice/index.html)

<ins>Example Datasets</ins>

- [Complex surveys](http://r-survey.r-forge.r-project.org/survey/index.html)
- [Sampling: Design and Analysis (SDaA)](http://cran.fhcrc.org/web/packages/SDaA/index.html)

<ins>Supplemental Reading</ins>

For those who want to read more about survey methodology in practice or the statistical treatment of survey methods; some suggestions for supplemental reading.

-	Chambers, R. L. and Skinner, C.J. Eds. (2003). Analysis of survey data. Hoboken, NJ: Wiley.
(The statistical book on survey methods that explains different methods in detail. Detailed equations and the book is meant for the professional (survey) statistician. 
-	De Leeuw, E. D., Hox, J. J., and Dillman, D. A. Eds. (2008). International Handbook of Survey Methodology. Routledge Academic. (http://joophox.net/papers/SurveyHandbookCRC.pdf).
(Reference book for survey researchers and practitioners, for those who collects and use survey data.) 
-	Fowler, F. J. (2009). Survey research methods. Oakfield: Sage.
A very easy (non-statistical) introduction in survey research methods; also known as the non-quantitative textbook on survey methods. 
-	Groves, Fowler, Couper, Lepkowski, Singer, Tourangeau. (2009). Survey methodology. Hoboken, NJ: Wiley. More thorough discussion of data collection methods, often recommended to practicing survey methodologists.
-	Valliant, R., Dever, J.A., and Kreuter, F. (2013). Practical Tools for Designing and Weighting Survey Samples. Springer. 

This book is aimed at constructing a sample design; determination of sample size for single and multistage sampling. 


## Grading and Examination

Two individual assignments (each 25% of your grade). The average of the two assignments should not be lower than 5.50. 

-	Assignment 1 comprises weeks 37-41 and is focused on sampling designs in surveys. It combines some theoretical questions about the analysis of a fictitious dataset on icecream sales in Italy. We will here test your understanding of the theory of sampling, implications for sample design, and doing some basic analyses in R. 
-	Assignment 2 comprises the materials of weeks 42-47. You here have to correct for both unit- and item nonresponse for an adopted survey. The goal of this assignment is to independently work through the survey documentation of a real-life survey to understand how the survey was designed with a focus on the sampling design, fieldwork and nonresponse. There are some exercises to prepare for this assignment in weeks 37-44.

Final group assignment (50% of final grade)

- A final assignment is a presentation of a group (of about four members), which concerns a survey data analysis using techniques discussed in the course. The final assignment will make up 50% of the final grade. The presentation and a technical report (showing how results are obtained in R), are included in the grading. Group work is supposed to reflect the work of all group members and each member should contribute to improve the level of the work. Inform the teacher when a member is not willing to contribute to the group work or is not investing enough effort and/or time. 

A group presentation is due at the final meeting of the course in week 51. The final report is due before Monday January 15, 17:00. Both are part of the final assignment.

Students need to get a 5.5 at the minimum for the two assignments, and achieve a weighted average of at least 5.5 as a final grade in order to pass the course. If a student does not make the minimum grade, there will be additional assignment that will allow the student to pass the course. Deadlines and requirements for any additional assignment will be discussed with the individual student.


## Link between tests and course aims

| Aims | Dublin Descriptors | How/where tested? |
| ---- | ------------------ | ----------------- |
|Obtain knowledge and skills in designing and applying survey research methods |	DD1	|	(Take home) exercises week 37-44,45-50<br>Assignment 1 |
| Understand the most important elements of design-based and model-based inference |	DD1	|	(Take home) exercises week 37,38<br>Assignment 1 |
| Understand trade-offs between bias, variance, and costs of survey sampling designs |	DD2	|	(Take home) exercises week 37,38,44<br>Assignment 1 |
| Understand the impact of survey design features on survey error and survey bias |	DD3	|	(Take home) exercises week 37,38,44,48-50<br>Assignment 2 |
| Obtain knowledge on survey data collection methods | DD1 | (Take home) exercises week 37,38,44,48-50<br>Assignment 2 |
| Apply the understanding of the methods discussed in the course to critically analyse an existing complex survey data survey | DD3, DD5	|	Group assignment in week 51 |
| Understand how to perform the analysis in cases of missing data (item and unit-nonresponse) |	DD2	|	(Take home) exercises week 45-46<br>Assignment 2<br>Group assignment in week 51 |
| Analyze survey data using the statistical software R | DD2 | (Take home) exercises week 39-43,45-47<br>Group assignment in week 51 |
| Present the findings from survey analysis conducted in R in form of a research paper and presentation | DD4 | Group assignment week 51 |

## Course overview
| Week | Date	| Topic of the week | Class exercise | Home exercise | Reading |
| ---- | ---- | ----------------- | -------------- | ------------- | ------- | 
| 36	 | 30/08 | 	No class	      | None           |               |         |
| 37	 | 6/09	| Two models of inference: Design vs. model based |	American election survey dataset.<br>Exercises	| Adopt a survey | https://www.technologyreview.com/2020/02/14/844770/pollsters-got-it-wrong-in-the-2016-election-now-they-want-another-shot/ https://www.politico.com/news/2020/06/17/trump-polls-biden-324210  |
| 38 | 13/09 | Total Survey Error and modes |	Error and bias exercise in R | What is TSE in survey of your choice? | Groves, R. M., & Lyberg, L. (2010). Total survey error: Past, present, and future. Public opinion quarterly, 74(5), 849-879. <br>  Biemer, P. P. (2010). Total survey error: Design, implementation, and evaluation. Public Opinion Quarterly, 74(5), 817-848. |
| 39 | 20/09 | Simple random sampling | Sampling exercise | Setting up Svydesign in R (learn R)	| Stuart (1984) until page 34 |
| 40 | 27/09 | Stratified and cluster sampling | R exercises | Sampling design of adopted survey |  Stuart (1984) p. 35-71 |
| 41 | 4/10 | R practical on svydesign | R exercise	| More R exercises |	`Assignment 1: due 9/10` |
| 42 | 11/10 | Model assisted survey estimation | R exercise | R exercises | Stuart (1984) 71-90 |
| 43 | 18/10 | Class-free week | | | |
| 44 | 25/10 | Nonresponse and weighting | R exercise part 1 | R exercise part 2 | De Leeuw, E., Hox, J., & Luiten, A. (2018). International nonresponse trends across countries and years: an analysis of 36 years of Labour Force Survey data. Survey Methods: Insights from the Field, 1-11 <br> Kalton, G., & Flores-Cervantes, I. (2003). Weighting methods. Journal of official statistics, 19(2), 81.  |
| 45 | 01/11 | Developing weights | Class Exercise: which variables| R exercises |<br> Brick, J. M. (2013). Unit nonresponse and weighting adjustments: A critical review. Journal of Official Statistics, 29(3), 329-353. <br> Optional: Bethlehem, J. G., & Keller, W. J. (1987). Linear weighting of sample survey data. Journal of official Statistics, 3(2), 141-153. <br> Optional: Lynn (1996) Weighting for nonresponse. Survey and Statistical Computing 1996, edited by R. Banks  |
| 46 | 08/11 | Missing data 1 |	R exercise | R exercise |	Chapters 1-3 from S. van Buuren. Flexible Imputation of Missing Data. Second Edition. CRC/Chapman & Hall, FL: Boca Raton, 2018. |
| 47 | 15/11 | Missing data 2 |	R exercise | R exercise	| Chapters 4-5 from S. van Buuren. Flexible Imputation of Missing Data. Second Edition. CRC/Chapman & Hall, FL: Boca Raton, 2018. <br> `Assignment 2 due: Friday 20/11` |
| 48 | 22/11 | Modes | Students discuss alternatives to the mixed-mode presentations of their peers | Students prepare in groups a presentation about the mixed-mode implications of their dataset | De Leeuw, E.D. (2018). Mixed-Mode: Past, Present, and Future. Survey Research Methods, 12, 2, 75-89. https://ojs.ub.uni-konstanz.de/srm/article/view/7402/6582 <br> Toepoel, de Leeuw & Hox (2019). Single- and mixed-mode survey data collection. Sage Research Methods foundations (on blackboard) <br> Kolenikov, S., & Kennedy, C. (2014). Evaluating Three Approaches to Statistically Adjust for Mode Effects. Journal of Survey Statistics and Methodology, 2(2). |
| 49 | 29/11 | Non-prob inference | | | Little, R.J. (2004). To model or not to model? Competing modes of inference for finite population sampling. Journal of the American Statistical Association, 99, 546-556. <br> https://www.youtube.com/watch?v=RIHGjjnE-jA <br> Cornesse, C., Blom, A. G., Dutwin, D., Krosnick, J. A., De Leeuw, E. D., Legleye, S., ... & Struminskaya, B. (2020). A Review of Conceptual Approaches and Empirical Evidence on Probability and Nonprobability Sample Survey Research. Journal of Survey Statistics and Methodology. <br>	Meng, X. L. (2018). Statistical paradises and paradoxes in big data (I): Law of large populations, big data paradox, and the 2016 US presidential election. The Annals of Applied Statistics, 12(2), 685-726. <br> https://www.politico.com/news/2020/06/17/trump-polls-biden-324210 |
| 50 | 06/12 | Designed big data | Work out a scenario of combining surveys with passive data | Analysis of passively collected data in R | Biemer Paul B., Edith de Leeuw et al. (eds.) (2017). Total Survey Error in Practice. Available through UU library (DOI:10.1002/9781119041702) <br> Chapter 3 “Big Data: A Survey Research Perspective” <br> Chapter 2 “Total Twitter Error”. John Wiley & Sons |
| 51 | 13/12 | Presentations | `Hand in with written feedback on Jan 15` | | Build a ‘presentation’ <br> Peer-review <br> Discussion meeting |
| 3	| 15/01 |	`Final assignment due at 17:00` | | | |

## Week-by-week schedule

#### Week 36: Preparation

**Prepare:** please see the document (preparation for semester 1 of the Research Master) that was e-mailed to you upon being accepted into the ReMa programme.

---

#### Week 37: Introduction to Survey Research - Two modes of inference

**Topic:** The majority of studies in the social, behavioral and medical sciences uses some form of survey data. Often surveys based on a small sample are used to say something about a larger population. This step is called inference. Many of the developments in statistics in the 20th century centered around the developments of valid inference procedures. For example, p-values and Confidence Intervals are designed to reflect the uncertainty that surrounds the use of a small sample for saying something about the larger population. This model of inference is called design-based inference. Crucial in design based inference is the process of drawing a random sample in a controlled way from the population. 
A second model of inference does not a neat random sample, but uses ‘found’ data to do inference, and relies on statistical modeling to model the relation between the sample and population. In this week, we will use the example of the 2016 U.S. Presidential Election to illustrate why there is a renewed 21st century battle between the two paradigms in how to do inference.

**Prepare for class:**

-	https://www.technologyreview.com/2020/02/14/844770/pollsters-got-it-wrong-in-the-2016-election-now-they-want-another-shot/
-	https://www.politico.com/news/2020/06/17/trump-polls-biden-324210 

Optional: 
-	Blumenthal, M., Clement, S., Clinton, J. D., Durand, C., Franklin, C., Miringoff, L., ... & Witt, G. E. (2017). An evaluation of 2016 election polls in the US. [link](https://www.aapor.org/Education-Resources/Reports/An-Evaluation-of-2016-Election-Polls-in-the-U-S.aspx?mod=article_inline)


**Lecture:** Two models for inference. The 21st-century war in survey science.

**Class Exercise:** Analyse presidential polls for the U.S. election. What type of poll was better at predicting the U.S. election? Introduction of the key terms: error and bias

**Take home Exercise:** adopt a survey. Every student will adopt one survey (from a longlist). Every survey comes with documentation on the survey design, as well as survey dataset. on this in weeks 37-43), and then correct for unit- and item nonresponse for this survey. 
There is also a list of suggestions of surveys to adopt in the exercise. 

---

#### Week 38: Total Survey Error and survey modes

**Topic:** Design based surveys are based on the central idea that you start a study by drawing a random sample from your target population. You then approach these people, and ask them to participate in your study. People typically answer some questions, after which you record the responses in a database, and then conduct analyses.

There are many steps in this process where bias or error can be introduced. The Total Survey Error framework can be used to conceptualize these errors, and assess where in the survey process things go wrong. In order to illustrate the TSE framework, we discuss the choice of survey mode (whether you use Internet, mail, telephone or in-person interviews) and its impact on survey error.

**Prepare for class:**

-	Groves, R. M., & Lyberg, L. (2010). Total survey error: Past, present, and future. Public opinion quarterly, 74(5), 849-879.
-	Biemer, P. P. (2010). Total survey error: Design, implementation, and evaluation. Public Opinion Quarterly, 74(5), 817-848.
-	Finish the take Home exercise

**Lecture:** Total Survey error and survey modes. 

**Class exercise 1:** What survey mode would you use (joint exercise)

**Class exercise 2:** Review the U.S. presidential election data. What is error and bias across survey modes?

**Take home exercise:** Drawing simple random samples. Bring your results to the next class.

--- 

#### Week 39: Sampling 1: simple random sampling	

**Topic:** Under a design-based model for inference, the process of drawing a sample is important. It is also the part of the research cycle that is entirely under the control of the researcher; nonresponse for example is much less so. Sampling is an important element of statistics and is therefore discussed in some detail in this course. In this week we focus on the most fundamental sampling principle, where every element of the population has an equal, non-zero chance of being selected into the sample.

**Prepare for class:**

-	Stuart (1984) until page 34
-	Finish the Take Home Exercise from the previous week. Bring the results to class.

**Lecture:** In the lecture we will review the basic idea of simple random sampling. We discuss sampling with/without replacement and their effects. We will also discuss the population size (finite population), and introduce the idea of estimators. 

**Class exercise 1:** Drawing samples in R. We will discuss the basic idea of sampling, and how this can be done in R. The results from everyone’s sample will be used to produce a sampling distribution that will be used to illustrate the concepts of bias and error again

**Take Home exercise:** Statistical software packages assume that the data you use reflect a simple random sample and it is not necessary to tell the software how you drew the sample. In later weeks in the course, when we discuss more complex sampling procedures, you need to ‘tell’ the software what sampling design you used. You will practice with specifying a general survey design in R using the data you generated in the class exercise.

--- 

#### Week 40: Sampling 2: stratification and clustering

**Topic:** In practice, real surveys seldomly use a simple random sampling design. We will discuss why stratification is often used to make the sample more efficient (allowing smaller samples), and why clustering is used to limit survey costs.

**Prepare for class:**

- Stuart (1984) p. 35-71
- Finish take home exercise week 39

**Lecture:** We start by discussing the Take home exercise. After this, we illustrate the benefits of stratification for survey efficiency and clustering for survey costs using example data. 


**Class exercise:** Specify a stratified and clustering design in R

**Take home exercise:** Review the survey documentation of your adopted design-based survey (see week 37). Work out the sampling design on paper (not in R!), and bring the results to class.

--- 

#### Week 41: Using R for analyzing survey datasets

**Topic:** practicing with using R for doing survey analysis, with a focus on stratified and clustered designs

**Prepare:**

-	Finish the take home exercise of the previous week
-	No new reading. Catch up with any chapters you didn’t read yet.

**Lecture:** no lecture

**Class exercise 1:** design effects. The efficiency of a sampling design can be expressed by the design effect. We study how this is produced in R. 

**Class exercise 2:** the Horvitz-Thompson estimator. Apart from specifying the specific survey design, correct inferences can also be done by directly using the inclusion probabilities of sample elements into the survey design. You will compute probabilities, and use these in R. 

**Take home exercise:** further exercises on complex sampling designs (multistage)

--- 

#### Week 42: Model-assisted survey estimation

Topic: We discuss two popular estimation methods that are often used in cluster and multistage sampling designs: Ratio and Regression estimation. The goal of these estimation methods is to make the estimation of a statistic of interest (e.g. mean) more efficient by using auxiliary variables. Inference is here not only using the inclusion probabilities anymore, but inference is being ‘assisted’ by the use of a statistical model. We introduce the idea of model-assisted inference. 	

**Prepare for class:**

-	Lohr chapters 4, 7
-	Stuart (1984) 71-90
-	Finish the take home exercise
-	Preparation for class discussion: find out what auxiliary data (at the sample level) is available for the survey you reviewed in week 37/40, and bring a list of auxiliary data to class. Think about the following question (after reading the literature): would it be a good idea for your survey to use ratio/regression estimation is you are interested in estimating one of the variables of interest in your survey? 


**Lecture:** We discuss a practical and fictitious example where data are clustered to illustrate why ratio/regression estimation is sometimes so attractive. The bias-variance trade-off as a concept is discussed and illustrated.  

**Class exercise 1:** Set up a ratio and/or regression estimation model for a cluster sample dataset	
Exercise in class: Discussion – when is it a good idea to use ratio/regression estimation?

**Take home exercise (for week 44):** TBA.

#### Week 43: Class-free Week. 

Catch up on readings and exercises. Review parts of lectures/exercises again that you found difficult.

--- 

#### Week 44: Nonresponse and weighting

**Topic:** Every survey suffers from nonresponse. Nonresponse rates are often large and are thought to be often the largest source of survey error. As long as information for the entire population or sample  is available, nonresponse error can to some degree be assessed and adjusted for.

**Prepare for class:**

- de Leeuw, E., Hox, J., & Luiten, A. (2018). International nonresponse trends across countries and years: an analysis of 36 years of Labour Force Survey data. Survey Methods: Insights from the Field, 1-11.
- Kalton, G., & Flores-Cervantes, I. (2003). Weighting methods. Journal of official statistics, 19(2), 81.
- Brick, J. M. (2013). Unit nonresponse and weighting adjustments: A critical review. Journal of Official Statistics, 29(3), 329-353.

**Optional:** Bethlehem, J. G., & Keller, W. J. (1987). Linear weighting of sample survey data. Journal of official Statistics, 3(2), 141-153.

**Optional:** Lynn (1996) Weighting for nonresponse. Survey and Statistical Computing 1996, edited by R. Banks

**Lecture:** We discuss how nonresponse can be assessed and nonresponse correction factors (weights) can be computed based on either target population or sample frame data. We discuss weighting by poststratification, linear weighting and raking. 

**Class/Take Home exercise:** R exercise to work with Nonresponse weights: In this exercise you learn how to work with existing nonresponse weights in R using the survey package.

--- 

#### Week 45: Designing weights

Topic: in practice, nonresponse weights should be developed keeping in mind what the dependent variable is. In situations where many variables asked among respondents are also available for the population, there are many possible nonresponse weighting models. In this week, we will focus on the question of how to develop nonresponse weights. We discuss the concept of ‘paradata’

**Prepare for class:** 
-	Brick, J. M. (2013). Unit nonresponse and weighting adjustments: A critical review. Journal of Official Statistics, 29(3), 329-353.
-	Kreuter, F. (2013). Improving surveys with paradata: Introduction. Improving surveys with paradata: Analytic uses of process information, 1-9.

**Lecture:** introduction to paradata. 

**Class exercise:** discussion about possible weighting variables given different dependent variables that are often of interest to scientists (e.g. voting behavior, attitudes towards vaccination).

**Take home Exercise:** R exercises where you develop your own weights for a survey conducted in the Netherlands.


#### Before week 46

For the final assignment you will work in a group of about 4 (+- 1) on a real-life dataset. The goal is to apply all the materials covered in the course, answer a substantive research question and solve a ‘challenge’ that covers an advanced problem in survey research. You will receive an e-mail on your @students.uu.nl account with more information about group membership, the assignment itself and your group members this week. 

--- 

#### Week 46: Missing data 1 

**Topic:** Missing data form a ubiquitous source of problems that most scientists or researchers cannot escape. For example, in survey applications, such as in social sciences or in official statistics, where vast amounts of data are collected, respondents often neglect to answer one or more items. A state of the art solution for this problem is multiple imputation. With imputation, some estimation procedure is used to impute (fill in) each missing datum, resulting in a completed dataset that can be analyzed as if the data were completely observed. When only one value is imputed (single imputation), uncertainty about the imputations is not reflected in the imputed data set and specific methods for variance estimation that take imputed values into account need to be employed. As a more versatile way to solve this, uncertainty about the imputed values can be taken into account by performing multiple imputation (MI). With MI, each missing datum is imputed m ≥ 2 times, resulting in m completed datasets. At least 2 imputations are warranted to reflect the uncertainty about the imputations, although performing more imputations is often advisable. The m datasets are then analyzed by standard procedures and the analyses are combined into a single inference.
 
**Prepare for class:**

-	Chapters 1-3 from S. van Buuren. Flexible Imputation of Missing Data. Second Edition. CRC/Chapman & Hall, FL: Boca Raton, 2018. Freely available from https://stefvanbuuren.name/fimd/

**Lecture:** We discuss why multiple imputation is the state of the art technique for drawing valid inferences from incomplete data.  

**Exercise in class:** R exercise where use the R package mice to multiply impute an incomplete data set. 

--- 

#### Week 47: Missing data 2 

**Topic:** We dive deeper into multiple imputation and explore multivariate imputation, passive imputation and imputation problems where the focus lies on finding plausible imputations when there is some restriction posed on the imputation model. 

**Prepare for class:**

-	Chapters 4-5 from S. van Buuren. Flexible Imputation of Missing Data. Second Edition. CRC/Chapman & Hall, FL: Boca Raton, 2018. Freely available from https://stefvanbuuren.name/fimd/

**Lecture:** We discuss why multiple imputation is the state of the art technique for drawing valid inferences from incomplete data.  

**Exercise in class:** R exercise where we find the answer to a scientific question of interest on incomplete data via multiple imputation with the R package mice. 

**Take Home Exercise (prepare for week 48):** Students work in groups to prepare a presentation or video in which they discuss the mixed-mode implications of the data set(s) they are working on for the final assignment. If their data contain a single mode, they will elaborate on how mixed-mode design can improve their data set.

--- 

#### Week 48: Survey modes: design and estimation 

**Topic:** Mixed-mode surveys are almost inevitable today, especially for academic research and official statistics. Mixing modes has many advantages, but there are also some potential drawbacks. In this lecture we give an overview of issues in design and analysis and provide tools for designing, implementing and evaluating mixed-mode surveys. We will discuss the most common designs for mixing modes. In analysing mixed-mode data it is important to distinguish between selection effects (who responds to which mode) and measurement effects (effect of mode on answer). We will discuss the implications of mixing modes for questionnaire design, total survey error, logistics and data analysis. 

**Prepare for class:**

- De Leeuw, E.D. (2018). Mixed-Mode: Past, Present, and Future. Survey Research Methods, 12, 2, 75-89. https://ojs.ub.uni-konstanz.de/srm/article/view/7402/6582
- Toepoel, de Leeuw & Hox (2019). Single- and mixed-mode survey data collection. Sage Research Methods foundations (on blackboard)
-	Kolenikov, S., & Kennedy, C. (2014). Evaluating Three Approaches to Statistically Adjust for Mode Effects. Journal of Survey Statistics and Methodology, 2(2). 

**Lecture:** In the lecture we discuss the design of mixed-mode surveys and its implications.

**Exercise in class:** Students are assigned in groups to a presentation or video of their peers. They will discuss the pro’s and con’s of the peer presentation, and give suggestions for improvement (since there is often not one single road to Rome). They will present their findings at the end of the lecture.

--- 

#### Week 49: Inference for non-probability surveys 

**Topic:** In week 42 we discussed model-assisted survey inference. This week we go one step further and discuss model-based approaches. A statistical model is used as the basis for performing inference; inclusion probabilities no longer play a role. 

**Prepare for class:**

-	Meng, X. L. (2018). Statistical paradises and paradoxes in big data (I): Law of large populations, big data paradox, and the 2016 US presidential election. The Annals of Applied Statistics, 12(2), 685-726.
-	Cornesse, C., Blom, A. G., Dutwin, D., Krosnick, J. A., De Leeuw, E. D., Legleye, S., ... & Struminskaya, B. (2020). A Review of Conceptual Approaches and Empirical Evidence on Probability and Nonprobability Sample Survey Research. Journal of Survey Statistics and Methodology.
-	Mercer, A. W., Kreuter, F., Keeter, S., & Stuart, E. A. (2017). Theory and practice in nonprobability surveys: parallels between causal inference and survey inference. Public Opinion Quarterly, 81(S1), 250-271.


**Lecture:** We review the U.S. presidential dataset again. How does one design a good inference model? The Total Survey Error Model is reviewed, with a focus on non-probability based datasets

**Exercise in class:** Can you model? We introduce a short competition. Who can design the best model? 

**Take home exercise:** Finish your model: send it by e-mail before the lecture of week 50.

--- 

#### Week 50: Designed Big data 

**Topic:** The increasing volume of Big Data produced by sensors and smart devices can transform the social and behavioral sciences. We will discuss how the true power of these data for the social sciences that lies in integrating Big Data with surveys. Using examples of successful existing studies that used digital data to provide new insights into social reality, we will focus on challenges and opportunities of integrating sensor- and app-based data collection into surveys. The Total Survey Error framework learned in Week 38 will serve as a basis for our discussion of introducing design to Big Data to gauge the inherent challenges of representativeness and measurement. Students will develop a scenario of combing Big Data and survey data, focusing on theoretical and practical aspects of such data integration. Students will have a chance to make decisions on preparing the raw data for analysis and obtaining inference. 

**Prepare for class:**

- Chapter 3 “Big Data: A Survey Research Perspective” and 
- Chapter 2 “Total Twitter Error” in Biemer Paul B., Edith de Leeuw et al. (eds.) (2017). Total Survey Error in Practice. John Wiley & Sons, Available through UU library (DOI:10.1002/9781119041702)

**Lecture:** In the lecture, we will discuss the types of Big Data, how types of errors from the Total Survey Error relate to Big Data, and how to combine survey data with Big Data sources.

**Exercise in class:** For class exercise, you will design a scenario that combines survey data with one or several Big Data sources.

**Take home exercise:** You will have a chance to analyze smartphone sensor data that you yourself have produced (e.g., from Apple Health). This exercise is optional, if you perform it, send your insights into your behavior and a short discussion on a possible research question and construct validity to b.struminskaya@uu.nl for extra credit.

--- 

#### Week 51: Student presentations

**Topic:** In week 46 of the course, groups of about 4 people are formed, who will together work on the final assignment. The final assignment is based on the work of these 4 people. You will get a real-life dataset and have to solve a research question for this dataset. Every dataset will have one unique challenge that will vary over each dataset. There will be datasets based on a non-probability sample, some datasets may have used mixed-mode data collection, some may have a complex set of nonresponse weights, some a complex missing data structure, and again another one may have collected mostly categorical data. The assignment will highlight what the specific challenge is of the dataset. More information will be available in the assignment itself.

**Prepare before class:**

In the final assignment you will have to:
1.	Do self-study to figure out how you can deal with the specific challenge, and explain how you used additional literature to tackle this problem.
2.	Perform one or more analyses to answer a substantive research question posed in the assignment.
3.	Carry out the analyses in R.
4.	Write a report in R-markdown (using default layout) documenting what you did, and why you did so.
5.	Prepare an online document that shows other students what challenge you were given, and how you dealt with the challenge. You may (or should!) be creative here. The document should be self-contained, so it could be a website (.html document), a wiki, a digital poster, a shiny app, a discussion/performance that is recorded on video or something else. It is not allowed to hand in a document with text (or code) only or use use Powerpoint/Prezi slides. Creativity get bonus points (see rubric final assignment). The product should be self-contained, and take no more than 6 minutes to watch/read/listen to.
You have to send the presentation to the course coordinator, and all other students (this can easily be done through Blackboard -> send e-mail) by December 11, 17:00
6.	Every group reviews the work of 1 other group (see the assigned schedule on Blackboard for this), and prepares 3 questions for the group to be asked during the meeting. 

**Lecture:** There will be no lecture. However, we will go through the questions that are prepared by each of the groups (so 5/6 short discussions). After this we more generally discuss how every group dealt with the challenge(s) in the assignment.

**After the lecture:** You have the opportunity to also hand in a draft of your report by 14 December at 17:00 latest. You will then receive written feedback on what can be improved before Friday 18 December 17:00. It is not obligatory to hand in a draft version.

--- 

#### Week 3

Hand in written final report (graded 50%). This assignment will be graded using the rubric posted on Blackboard. Three of the rubrics here concern the presentation and discussion of week 51. All students in the group normally get the same grade. However, it may be the case that some members of the group get a higher or lower grade depending on their performance in the group work as judged by the course coordinator.
