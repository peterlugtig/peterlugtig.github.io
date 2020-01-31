---
title: 'matching to correct for self-selection bias in mixed-mode surveys'
date: 2011-03-15T21:57:00.001+01:00
draft: false
tags : [nonresponse error, mode effect, matching, mixed mode]
---

Mixed mode surveys have shown to attract different types of respondents. This may imply that they are succesful. Internet surveys attract the young and telephone surveys the old, so any combination of the two can lead to better population estimates for the variable you're interested in. In other words, mixed-mode surveys can potentially ameliorate the problem that neither telephone, nor Internet surveys are able to cover the entire population.  
  
The bad news is that mode-effects (see posts below) coincide with selection effect in mixed-mode surveys. For that reason, it is hard to determine how succesful mixed-mode surveys are, and more importantly, really hard to combine results when there are large differences in the dependent variable across the survey modes.  
  
I think that matching is one of the few methods to adequately deal with this issue: the idea is straightforward. In any survey among the general population, there will be 1. people who are able and willing to only answer in a specific survey mode (i.e. the Internet or telephone), 2. respondents who would respond in both and 3. respondents who would not participate at all. This means that the composition of the telephone and Internet-samples in a mixed-mode survey will contain people unique to that mode, and people who can also be found in the other mode (see below - the match part).  
[![](https://lh3.googleusercontent.com/-mwaROOxG7KA/TX_Hzx7ALDI/AAAAAAAACXw/nSY4L8EkoVU/s320/matching+TeamVier.bmp)](https://lh3.googleusercontent.com/-mwaROOxG7KA/TX_Hzx7ALDI/AAAAAAAACXw/nSY4L8EkoVU/s1600/matching+TeamVier.bmp)  
With matching, respondents who are similar on a set of covariates are matched from both survey modes, so that pairs of very similar respondents are formed from every survey mode. After matching, any differences that persists between the matched respondents from both samples cannot be due to selection effects on the covariates. Therefore, any differences that remain between the matched respondents after matching should exist only because of a mode effect: whether a question is asked by the interviewer or self-administered, whether it is audial or visual, and whether answers are spoken or written down.  
Matching can be easily done using the package [MatchIt in R](http://rss.acs.unt.edu/Rdoc/library/MatchIt/html/00Index.html) (amongst others). More information about matching in mixed-mode surveys can be found in a [manuscript](http://www.ijmr.com/AboutIJMR/SampleArticles.asp) I wrote with some colleagues.