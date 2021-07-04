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

All articles below are available by searching for the title in a search engine for academic publications. Doing so from within the UU-domain will show direct links. [www.scholar.google.com](https://www.scholar.google.com) is the teacher's favorite search engine.

1.	Biemer, P. P. (2010). Total survey error: Design, implementation, and evaluation. Public Opinion Quarterly, 74(5), 817-848.
2.	Blumenthal, M., Clement, S., Clinton, J. D., Durand, C., Franklin, C., Miringoff, L., ... & Witt, G. E. (2017). An evaluation of 2016 election polls in the US. [link]
3.	Meng, X. L. (2018). Statistical paradises and paradoxes in big data (I): Law of large populations, big data paradox, and the 2016 US presidential election. The Annals of Applied Statistics, 12(2), 685-726.
4.	Groves, R. M., & Lyberg, L. (2010). Total survey error: Past, present, and future. Public opinion quarterly, 74(5), 849-879.
5.	Lynn (1996) Weighting for nonresponse. Survey and Statistical Computing 1996, edited by R. Banks
6.	Kalton, G., & Flores-Cervantes, I. (2003). Weighting methods. Journal of official statistics, 19(2), 81.
7.	Brick, J. M. (2013). Unit nonresponse and weighting adjustments: A critical review. Journal of Official Statistics, 29(3), 329-353.
8.	de Leeuw, E., Hox, J., & Luiten, A. (2018). International nonresponse trends across countries and years: an analysis of 36 years of Labour Force Survey data. Survey Methods: Insights from the Field, 1-11.
9.	Little, R.J. (2004). To model or not to model? Competing modes of inference for finite population sampling. Journal of the American Statistical Association, 99, 546-556.  
10.	Cornesse, C., Blom, A. G., Dutwin, D., Krosnick, J. A., De Leeuw, E. D., Legleye, S., ... & Struminskaya, B. (2020). A Review of Conceptual Approaches and Empirical Evidence on Probability and Nonprobability Sample Survey Research. Journal of Survey Statistics and Methodology.
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


## Attendance

Lectures and practicals are compulsory. 
It is important to attend all classes to fully understand the theory and to obtain required practical skills for survey data analysis. However, if you cannot attend a meeting, for example due to sickness, an exception can be made. Course materials and answer to exercises will be posted on the course website. When you cannot attend a meeting, you should inform the teacher by email (as soon as possible, preferably before the start of the class).

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
This book is aimed at constructing a sample design; determination of sample size for single and multistage sampling. R-software PracTools to do the computations. 

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


Understand trade-offs between bias, variance, and costs of survey sampling designs	DD2	•	(Take home) exercises week 37,38,44
•	Assignment 1
Understand the impact of survey design features on survey error and survey bias	DD3	•	(Take home) exercises week 37,38,44,48-50
•	Assignment 2
Obtain knowledge on survey data collection methods 	DD1	•	(Take home) exercises week 37,38,44,48-50
•	Assignment 2
Apply the understanding of the methods discussed in the course to critically analyse an existing complex survey data survey 	DD3, DD5	•	Group assignment in week 51
Understand how to perform the analysis in cases of missing data (item and unit-nonresponse)	DD2	•	(Take home) exercises week 45-46
•	Assignment 2
•	Group assignment in week 51
Analyze survey data using the statistical software R	DD2	•	(Take home) exercises week 39-43,45-47
•	Group assignment in week 51
Present the findings from survey analysis conducted in R in form of a research paper and presentation.	DD4	•	Group assignment week 51


