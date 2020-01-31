---
title: 'To weight or to impute for unit nonresponse?'
date: 2013-10-06T21:49:00.003+02:00
draft: false
tags : [weighting, nonresponse error, imputation, coverage error, data quality]
---

This week, I have been reading the most recent issue of the [Journal of Official Statistics](http://www.jos.nu/), a journal that has been open access since the 1980s.  In this issue is a [critical review article of weighting procedures](http://www.jos.nu/Articles/abstract.asp?article=293329) authored by Michael Brick with commentaries by Olena Kaminska ([here](http://www.jos.nu/Articles/abstract.asp?article=293355)), Philipp Kott ([here](http://www.jos.nu/Articles/abstract.asp?article=293359)), Roderick Little ([here](http://www.jos.nu/Articles/abstract.asp?article=293363)), Geert Loosveldt ([here](http://www.jos.nu/Articles/abstract.asp?article=293367)), and a rejoinder ([here](http://www.jos.nu/Articles/abstract.asp?article=293371)).  
  
I found this article a great read, and to be full of ideas related to unit nonresponse. The article reviews approaches to weighting: either to the sample or the population, by poststratification and with different statistical techniques. But it discusses much more, and I recommend reading it.  
  
One of the issues that is discussed in the article, but much more extensively in a commentary by Roderick Little, is the question whether we should use weighting or imputations to adjust for unit nonresponse in surveys. Over the years, I have switched allegiances to favouring weighting or imputations in certain missing data situations many times, and I am still not always certain on what is best to do. Weighting is generally favoured for cross-sectional surveys, because we understand how it works. Imputations are generally favoured when we have strong correlates for missingness and our variable(s) of interest, such as in longitudinal surveys. Here are some plusses and minuses for both weighting and imputations.  
  
Weighting is design based. Based on information that is available for the population or whole sample (including nonrespondents), respondent data are weighted in such a way that the survey data reflect the sample/population again.  
  
\+ The statistical properties of all design-based weighting procedures are well-known.  
\+ Weighting works with complex sampling designs (at least theoretically).  
\+ We need relatively little information on nonrespondents to be able to use weighting procedures. There is however a big BUT...  
\- Weighting models mainly use socio-demographic data, because that is the kind of information we can add to our sampling frame. These variables are never highly correlated with our variable of interest, nor missingness due to nonresponse, so weighting is not very effective. That is, weighting theoretically works nicely, but in practice, it doesn't ameliorate the missing data problem we have because of unit nonresponse much.  
  
Imputations are model based. Based on available information for respondents and nonrespondents, a prediction model is built for a variable which has missing information. The model can take an infinite number of shapes, depending on whether imputation is stochastic, how variables are related within the model, and what variables are being used. Based on this model, one or multiple values are imputed for every missing value on every variable for every case. The crucial difference is that weighting uses the same variables for correcting the entire dataset, whereas imputation models differ for every variable that is to be imputed.  
  
\+ Imputation models are flexible. This means that the imputation model can be optimized in such a way that it strongly predicts both the dependent variable to be imputed, and the missingness process.  
  
\- In the case of unit nonresponse, we often have limited data on nonrespondents. So, although a model-based approach may have advantages over design-based aproaches in terms of its ability to predict our variable(s) of interest, this depends on the quality of the covariates we use.  
  
This then brings me, and the authors of the various papers in JoS back to the basic problem: [we don't understand the process on nonresponse in surveys](http://www.peterlugtig.com/2013/09/nonresponse-workshop-2013.html). Next time, more on imputations and weighting for longitudinal surveys. And more on design vs. model based approaches in survey research.  
  
p.s. This all assumes simple random sampling. If complex sampling designs are used, weighting is until now I think the best way to start dealing with nonresponse. I am unaware of imputation methods that can deal with complex sampling (other than straightforward multilevel structures).