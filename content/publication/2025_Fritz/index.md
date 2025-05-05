---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Smart Survey Implementation WP2 deliverable M24: smart advanced stage."
authors: [Fritz, M., Keusch, F., de Viitis, C., Amen, B., Fausti, F., Inglese, F., Lore, M., Pappagallo, A., Piccolo, F., Terribili, M., Perez, M., van Tienoven, T.P., Lusyne, P., Berg, N., Holmoy, A., Court, L., Mikol, F., Moreau, S., Quantin, S., Solard, J., Debije, D., van den Heuvel, J., Saitovic, J., Veldhuizen, M., Elevelt, A., Bakker, J., Kompier, M., Schouten, J.G., Klingwort, J., Giesen, D., Volk, J., Haufglockner, L., Blanke, K., McCool, D., Struminskaya, B., Lugtig, P.]
date: 2025-04-30T00:00:00+01:00
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate:

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["4"]

# Publication name and optional abbreviated publication name.
publication: "Eurostat SSI WP deliverable"
publication_short: 

abstract: "The goal of the WP2 ‘Methodology’ workpackage of the Smart Survey Implementation project (SSI) is
to find out what general methodological elements trusted smart surveys should have so that they can
be used in statistical production by European NSIs. Each task focuses on either an ‘opportunity’ or
‘threat’ that was identified in the TSS I framework and pilot recommendations for smart surveys. The
four subtasks are:
1. The successful recruitment of participants for smart surveys.
2. Using machine learning to improve Human-Computer Interaction in smart surveys.
3. Usability and Human-Computer Interaction in smart surveys.
4. Integrating smart surveys with traditional survey methods by estimating the mode effect.
We refer to deliverable M6 (Review stage) for a discussion of learnings from past findings on projects
conducted in the context of the European Statistical System and the wider academic context with
regards to these four key challenges, and deliverable M14 (smart baseline stage) for an overview of
how the central questions from deliverable M14 resulted in a series of smaller and larger field tests
that were carried out between 2024 and 2025. In this deliverable, findings from the M6 and M14
deliverables are in places summarized when this is necessary to understand the current deliverable,
but details in the design and motivations of our study are here not explained in detail. The goal of the
current deliverable is concentrated on how to carry out a smart survey; the methodology of recruiting
respondents, how to deal with sensor data, design the app and user Interaction in the app, and how
to integrate smart surveys. The goal was to develop an end-to-end methodology for smart surveys.
The two use cases that we concentrated on were the Household Budget Study (HBS) and Time Use
Survey (TUS), whch both are surveys that are part of the European Statistical System (ESS).
Of central importance are several large and small field tests. The large tests aim to answer the question
of how respondents can be successfully recruited into smart surveys (task 2.1) and how to integrate
smart surveys with traditional surveys (task 2.4). The large field tests were conducted in Norway (HBS),
France (TUS & HBS), Belgium (TUS), and Germany (HBS). Norway and France used a smart survey app
which was self-developed, and Germany and Belgium used the MOTUS platform as developed by Hbits.
All countries used the general population as the target population and drew fresh samples to conduct
the field test following a general design, where some key elements of the field tests are shared across
the countries. Respondents are recruited using an offline method (e.g., recruitment via interviewers
or postal mail). This allows for the comparison of country-level differences in, for example, the success
of particular recruitment strategies. Apart from common elements to the fieldwork design, countryspecific
variations on the design were also used to tailor tests to local circumstances, and to test
specific design elements related to recruitment (task 2.1) or mode measurement effects (task 2.4).
Deliverable M14 explains these choices in detail.
Chapter 2 discusses the outcomes of these tests for recruitment, and concludes that it is difficult to
recruit respondents from fresh-probability samples. The use of interviewers in a tailored invitation
strategy can really benefit the success of recruitment for smart surveys. Within the project, additional
tests around different ways to use interviewers were scheduled for Italy and the Netherland, but these
tests did not happen within the timeframe of this project. In the case of Italy issues around the
conclusion of a DPIA, and in the Netherlands issues in the IT-system at Statistics Netherlands precluded
results from these tests to be included in this deliverable. These will be published separately after the
conclusion of the project.
Chapter 3 discusses how sensor data that are included as smart elements in a smart survey should be
processed. For the HBS pictures of shopping receipts formed the basis of the smart data, whereas for
TUS these wer geolocation data. In particular, this chapter focuses on how to guarantee that processed
sensor data are of sufficient quality to be used in practice. Geolocation data are processed to generate
a pre-filled time-diary of travel-episodes and non-travel episodes. In HBS, pictures of receipts are used
to extract relevant product lines, read in the products and their prices, and subsequently link these to
standard Coicop codes of products. This chapter shows how Machine Learning can be used to process
sensor data, but also illustrates some of the difficulties there are on relying on Machine Learning only.
In some cases, the quality of processed sensor data is insufficient; a human-in-the-loop may be
necessary to further improve the quality of the data.
Chapter 4 directly follows on the chapter on Machine Learning and studies how to integrate process
sensor data in a smartphone app, and design the Human-Computer interaction between the
respondent and app. At the core of this chapter are a series of small tests conducted in every country
throughout the project. The goal of these smaller experiments is to technically test some of the
microservices developed in workpackage 3 that process the sensor data, test the Machine Learning
standards developed in task 2.2 and integrated in the microservice, and finally to test the Human-
Computer Interaction features of smart surveys. This chapter describes the aspects of smart surveys
for two microservices that process smart data in detail. It documents aspects of smart surveys that
work well and highlights issues respondents face in practice in interacting with steps in the response
process. From this chapter follow specific recommendations on how to improve the smart surveys
related to TUS and HBS, but also for smart surveys in general.
Chapter 5 investigates how outcome statistics change when moving from a traditional diary study in
the context of Household Budget or Time Use, towards a smart survey. One of the main reasons to
move to a smart survey is to decrease respondent burden and improve measurement quality. The
chapter finds that indeed measurement quality changes when moving to a smart survey. For Time Use,
these changes can be relatively large, and consist of changes due to increasing missing data problems,
and improved measurement. Suggestions are given to potentially reduce measurement differences
between survey modes, for example by tackling the issue of missing data in Time Use diaries, and how
to estimate the size of the mode measurement effect in detail using statistical modeling techniques.
This deliverable is concluded by chapter 6. This chapter integrates findings from the different chapters,
and establishes a framework for how to design a smart survey methodology. We conclude that there
is not one way to design a smart survey methodology. The specific design of a smart survey should be
topic- and country-specific. Some of the country-specific considerations for how to design a smart
survey may depend on aspects that extend beyond methodological issues, such as legal/ethical
considerations (see WP5 of this project), the platform and IT infrastructure used (see WP 3), and most
importantly organisational and business processes (See WP4). Still, we believe there is a common and
fundamental choice to make on how smart a smart survey should be, and that a choice early on the
design process can help guide all other choices.
Finally, this deliverable contains a large section of appendices. These appendices are all designed as
stand-alone documents that can be read when interested in more detailed results. These include
country-specific results from the large field tests (Appendix A), details on what database to use to
enrich geolocation data with the purpose of a location visits in the context of TUS (Appendix B), country
reports from the usability tests (Appendix C), detailed results from mode-effect studies carried out in
France (Appendix D) and a report on a feasibility study to develop a smart survey around energy use
(Appendix E).
We hope this deliverable will provide an impetus for further developing smart surveys within official
statistics and beyond in the next years. This deliverable aims to show how smart surveys can be
conducted successfully. It however also provides lots of specific areas where further research and tests
are needed. We hope this deliverable will therefore both serve as a basis, but also as inspiration for
the further development of smart surveys in years to come."

# Summary. An optional shortened abstract.
summary: ""

tags: [Smart survey, designed big data, review study, eurostat, official statistics]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "https://www.dropbox.com/scl/fi/7zs7ismfiedgxbx47ciaj/SSI-deliverable-2.3-Smart-advanceed-stage-Methodology.pdf?rlkey=8hljyu1bwd08t2r5f140lmxiq&dl=0"
url_code: 
url_dataset:
url_poster:
url_project: "https://cros.ec.europa.eu/dashboard/trusted-smart-surveys"
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
