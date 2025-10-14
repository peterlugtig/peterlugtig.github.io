---
date: "2025-10-14T00:00:00Z"
external_link: ""
image:
  caption: Photo by rawpixel on Unsplash
  focal_point: Smart
links:
slides: example
summary: Provenance and data quality are essential for supporting the reuse of data, especially when various data sources are combined in complex and iterative ways. Data linkage can be done at the level of people, space and time, and combinations of these dimensions. This task develops a framework for assessing the quality of linked data, proposes which of the quality indicators to use in metadata so that users understand the quality of data before linkage, and develops these indicators for both linkage across people, space and time (events) depending on the dataset. It concentrates on the linkage of datasets, not on linked data in the sense of the semantic web. In the project [Social Science and Humanities Open Cloud-NL (SSHOC_NL)](https://sshoc.nl/) the large-scale infrastructures [ODISSEI](www.odissei-data.nl) and [CLARIAH](https://clariah.nl/) together seek to provide a step-change for the social science and humanities.
tags:
-  SSHOC-NL, data_linkage, data_quality, measurement_error, metadata, DCAT-3
title: SSHOC_NL
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""
---

Provenance and data quality are essential for supporting the reuse of data, especially when various data sources are combined in complex and iterative ways. Data linkage can be done at the level of people, space and time, and combinations of these dimensions. This task develops a framework for assessing the quality of linked data, proposes which of the quality indicators to use in metadata so that users understand the quality of data before linkage, and develops these indicators for both linkage across people, space and time (events) depending on the dataset. It concentrates on the linkage of datasets, not on linked data in the sense of the semantic web.

In the project [Social Science and Humanities Open Cloud-NL (SSHOC_NL)](https://sshoc.nl/) the large-scale infrastructures [ODISSEI](www.odissei-data.nl) and [CLARIAH](https://clariah.nl/) together seek to provide a step-change for the social science and humanities. I work with [An-Chiao Liu](https://www.uu.nl/medewerkers/ALiu) on indicators for data quality that can be used to improve data linkage

So far, ODISSEI has focused on the linkage of people. As an example, a survey conducted among the Dutch population about experiences in the labour market can be linked to administrative data from Statistics Netherlands about the actual labour market trajectories of the interviewed respondents. Linkages for individual people are typically made based on the name of the individual, date of birth, BSN and/or home address of respondents. In some cases, one can also make linkages at a higher unit of aggregation, for example the household or neighbourhood.
Data linkage is not always successful. Apart from exact matches between survey and administrative data, there will be cases that do not match exactly. This could be because of different definitions (vocabulary differences) in the linkage variables across data sources, due to measurement errors in either of the variables used in linkage, or because of timing or space differences. A date of birth may be used in different formats across data sources, misreported by the respondent or data may be outdated because of delays in administer processes for example. In such cases, matches are often made probabilistically, risking more error in the linkage process

The aims of this project are to:
1.	develop a framework for assessing the quality of linked data
2.	to embed quality indicators into the meta data (using the standards in the vocabulary register developed in task 4.1) describing these datasets.
3.	develop a tool that uses the embedded data quality indicators within/across data portals (e.g. the ODISSEI portal and Ineo) to show users how ‘linkable’ datasets are.
4.	to do this for combinations of data linkage dimensions: entities (e.g. people), space and events (time), are again linked to the vocabularies registry developed in task 4.1
5.	do this from start to end for several use cases in the social sciences and humanities, and
6.	develop software (a tool) specifically for improving linkages across space (geography). Note we are not creating a tool for data linkages for people and/or time (these exist already or can be done using standard software).

Outputs of this project are expected in the period 2025-2029, and [can be found here](https://www.peterlugtig.com/tags/SSHOC-NL/).

