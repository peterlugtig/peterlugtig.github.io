---
title: 'Which devices do respondents use over the course of a panel study?'
date: 2014-12-02T15:44:00.000+01:00
draft: false
tags : [User agent strings, measurement error, mobile survey, R, mixed mode, panel survey]
---

  

[Vera Toepoel](https://www.uu.nl/staff/VToepoel) and I have been writing a few articles over the last two years about how survey respondents are taking up tablet computers and smartphones. We were interested in studying whether people in a probability-based web panel ([the LISS panel](https://www.lissdata.nl/)) use different devices over time, and whether siwtches in devices for completing surveys are associated with more or less measurement error.  
  
In order to answer this question, we have coded the User Agent Strings of the devices used by more than 6.000 respondents over a six month period. (see the publication tab for a syntax on how to do this using R).  
  
We find, as others have done, that in every wave about 10% of respondents either use a tablet or smartphone. What is new in our analyses is that we focus on the question whether respondents persistently use the same device.  
  
The table below shows that PC users largely stick to their PC in all waves. For example, we see that 77.4% of PC-respondents in April, again use a PC in May. Only 1.5% of April’s PC respondents switch to either a tablet or smartphone to complete a questionnaire in May.  
  

**Table.** Devices used between April and September 2013 by LISS panel respondents.  

[![](https://1.bp.blogspot.com/-GBK0uZ9jCuQ/VH3RelGgypI/AAAAAAAACsg/lKOeVcgPHb0/s1600/lugtig%2Band%2Btoepoel%2Btable%2B1.png)](https://1.bp.blogspot.com/-GBK0uZ9jCuQ/VH3RelGgypI/AAAAAAAACsg/lKOeVcgPHb0/s1600/lugtig%2Band%2Btoepoel%2Btable%2B1.png)

N = 6,226. Click to enlarge

The proportion of respondents switching a PC for either a tablet or smartphone is similarly low in the other months, and is never more than 5%. This stability in device use for PCs is, however, not found for tablets and smartphones. Once people are using a smartphone in particular, they are not very likely to use a smartphone in the next waves of LISS. Only 29 per cent of smartphone users in July 2013, again uses a smartphone in August for example. The consistency of tablet usage increases over the course of the panel; 24% of respondent is a consistent tablet user in April-May, but this increases to 64% in July-August.

  

Finally, it is worth to note that the use of either a smartphone or a tablet is more likely to lead to non-participation in the next wave of the survey. This may however be a sample selection effect. More loyal panel members may favor the PC to complete the questionnaires.  
  
More in a next post on the differences between respondents answer behavior over time, when they switch devices. Do respondents become worse when they answer a survey on a smartphone or tablet?  
  
You can download the full paper [here](https://www.dropbox.com/s/ew6rtantczkpi7y/Lugtig%20and%20Toepoel%20%28prepublication%29.pdf?dl=0)