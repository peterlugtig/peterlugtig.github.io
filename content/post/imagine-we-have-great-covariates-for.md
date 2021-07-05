---
title: 'Imagine we have great covariates for correcting for unit nonresponse...'
date: 2013-10-14T10:41:00.001+02:00
draft: false
tags : [missing data, weighting, attrition, nonresponse error, imputation, panel survey]
---

I am continuing on the recent article and commentaries on weighting to correct for unit nonresponse by Michael Brick, as published in the recent issue of the Journal of Official Statistics ([here](https://www.jos.nu/Articles/abstract.asp?article=293329)).  
  
The article by no means is all about whether one should impute or weight. I am just picking out one issue that got me thinking. Michael Brick rightly says that in order to correct succesfully for unit nonresponse using covariates, we want the covariates to do two things:  
  
1\. They should explain missingness.  
2\. They should highly correlate with our variable of interest.  
  
In other words, these are the two assumptions for a Missing At Random process of missing data.  
  
The variables (covariates) we currently use for nonresponse adjustments do neither. Gender, age, ethnicity, region, (and if we're lucky) education, household composition and house characterics do not explain missingness, nor our variable of interest. Would it ever be conceivable to obtain covariates that do this? What are the candidates?  
  
**1\. covariates (X) that explain missingness (R):**  
Paradata are currently our best bet. Those may be interviewer observations or call data during fieldwork (note the absence of sample level paradata for self-administered surveys - here lies a task for us). Paradata don't explain missingness very well at the moment, but I think everyone in survey research agrees we can try to collect more.  
Another set of candidates are variables that we obtain by enriching sampling frames. We can use marketing data, social networks, or census data to get more information on our sampling units.  
  
**2\. covariates (X) that explain our variable of interest (Y)**:  
Even if we find covariates that explain missingness, we also want those covariates to be highly correlated to our variable of interest. It is very unlikely that a fixed set of for example paradata variables can ever achieve that. Enriched frame data may be more promising, but is unlikely that this will generally work. I think it is a huge problem that our nonresponse adjustment variables (X) are not related to Y, and one that is not likely to ever be resolved for cross-sectional surveys.  
  
But. In longitudinal surveys, this is an entirely different matter. Because we usually ask the same variables over time, we can use variables from earlier occasions to predict values that are missing at later waves. So, there, we have great covariates that explain our variable of interest. We can use those as long as MAR holds. If change in the dependent variable is associated with attrition, MAR does not hold. Strangely, I know very few studies that study whether attrition is related to change in the dependent variable. Usually, attrition studies focus on covariates measured before attrition, to then explain attrition. They do not focus on change in the dependent variable.  
  

[![](https://2.bp.blogspot.com/-NhM3-D53n-g/UlutJ3JdvgI/AAAAAAAACnY/vmiOUDyFvdk/s400/missing+data+mechanisms.png)](https://2.bp.blogspot.com/-NhM3-D53n-g/UlutJ3JdvgI/AAAAAAAACnY/vmiOUDyFvdk/s1600/missing+data+mechanisms.png)

Covariate adjustment for nonresponse in cross-sectional and longitudinal surveys

  

(follow-up 28 October 2013): When adjustment variables are strongly linked to dependent variables, but not to nonresponse, variances tend to be increased (See Little and Vartivarian). So, in longitudinal surveys, the weak link between X and R should really be of medium strength as well, if adjustment is to be successful.  
  
I once thought that because we have so much more information in longitudinal surveys, we could use the lessons that we learn from attrition analyses to improve nonresponse adjustments in cross-sectional surveys. In a [forthcoming book chapter](https://www.peterlugtig.com/2012/09/is-panel-attrition-same-as-nonresponse.html), I found that the correlates of attrition are however very different from the correlates of nonresponse in wave 1. So in my view, the best we can do in cross-sectional surveys is to focus on explaining missingness, and then hope for the best for the prediction of our variables of interest.