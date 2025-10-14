---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Smart Survey Implementation WP2 deliverable M6: review stage."
authors: [ Bucher, H., Keusch, F.,  de Viitis, C., Fausti, F.. Inglese, F., van Tienoven, T.P., McCool, D., Struminskaya, B. & Lugtig, P.]
date: 2023-10-31T00:00:00+01:00
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate:

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["4"]

# Publication name and optional abbreviated publication name.
publication: "Eurostat SSI wp deliverable"
publication_short: 

abstract: "Smart surveys have emerged as a promising data collection method, bridging the gap between traditional survey techniques and modern technological advancements. The key characteristic of smart surveys is that they intelligently combine the use of asking questions (surveys through self-report) with smart features collected via sensors on smartphones, wearables and other devices. The goal of smart surveys is to improve data quality, reduce participant burden, provide more timely and more granular data, or combinations of these.
Over the past years, small-scale experiments have studied aspects around the design of smart surveys. This deliverable reports on the first stage of the Smart Survey Implementation (SSI) project; in particular on the question of how to develop an end-to-end research methodology for smart surveys, which is the overarching goal of Workpackage 2 of the SSI project. This deliverable has the goal to review smart surveys with the twin goal to learn about how to establish a successful methodology, and highlight gaps in our knowledge that will be addressed later in the SSI project.
This deliverable should be read in the context of other deliverables around the project coordination (workpackage 1), developing microservices for smart surveys (workpackage 3), the logistics of running smart surveys (workpackage 4), and ethical and legal issues (workpackage 5). This deliverable can, however, also be read as a standalone product.
Within the overall goal of developing a research methodology for implementing smart surveys from start to finish, we have identified four large pressing issues that prevent smart surveys from being implemented in the context of European Official Statistics data collection. These issues are:
1. How to successfully recruit and retain participants for smart surveys, taking into account difficult-to-reach groups in society.  
2. How to use machine learning models to improve Human-Computer Interaction in smart surveys.  
3. How to design smart surveys from a User Experience (UX) or usability perspective and involve respondents, and the human-computer interaction with sensor data after being processed by machine learning models.  
4. How to integrate data from smart surveys with traditional survey methods by estimating the mode effect (that is, a difference due to the mode of administration being smart vs. traditional).  

The rest of this deliverable is structured along these four main topics of the research methodology and separated into four chapters. Each chapter introduces the main problems that we face in the implementation of smart surveys, with a particular focus on the use cases of the European Time Use Surveys (TUS) and Household Budget Surveys (HBS). Later in the project, smart surveys around Time Use and Household Budget will be implemented in two platforms: the MOTUS platform that has been developed by Hbits, and the HBS-platform as developed by Statistics Netherlands. For an overview of how the apps look and feel, and how details on time use and household budget can be collected using a digital smartphone diary, we refer to the deliverable of Workpackage 1.

After reviewing findings from earlier ESSNET projects relevant for smart surveys and reviewing the wider literature from other national and international projects, each chapter will outline the main issues and what will be done in the SSI project to address and solve these issues.
In order to solve open questions, the project will carry out several small and larger field-tests in the period 2023-2025 that seek to test solutions in practice and provide evidence for best-practices using Randomized Controlled Trials.
In practice, it is quite likely that there are multiple successful methodologies for conducting smart surveys, that also depend on local circumstances. For example, in some countries, interviewers may play a big role in both recruitment and retainment for smart surveys (issue 1), but also in the usability of the app (issue 3), while other countries may for various reasons choose not to use interviewers. Countries may rely to a greater or lesser extent on traditional non-smart surveys in combination with smart surveys to produce official statistics (issue 4). Or, as a final example, the data available for training and re-training machine learning models in smart surveys may differ both between and within countries over time (issue 2). One of the final goals of this workpackage is to establish what combinations of smart survey designs work, and what types of combinations do not work. To account for differences between countries, we conduct field experiments and usability tests in multiple countries.
A final goal of this workpackage is to establish trade-offs between design features in smart surveys. One such trade-off is between recruitment and retainment (issue 1) and the mode-effect (issue 4). As an example, offering alternative data collection modes, such as web or paper diaries, next to smart surveys may potentially lead to higher response rates in the recruitment of surveys, but comes at the expense of differences in data across the modes (mode-effects: issue 4). The more alternative modes are offered, the more complex it will be become to estimate mode effects, and integrate data from multiple modes.
Another trade-off can be found between using machine learning models (issue 2) and usability of smart surveys (issue 3). One of the primary reasons for doing smart surveys is that we can measure things that respondents find impossible or very hard to answer (e.g. the start time of a time use activity or the exact expenses while shopping for groceries). When machine learning models work well, this should improve the usability of the response task for the respondent. For example, automaticaly classifying pictures from shopping receipts should lower burden for respondents and improve the quality of measurements. Should machine learning models however not perform well (e.g. because of low quality pictures or problems in classification of products) then the respondent may be presented with smart data that is ‘wrong’. When data from machine learning models requires manual correction by the respondents, this leads to usability problems (issue 3), and ultimately perhaps problems with retainment (issue 1).
It is the ultimate goal of this workpackage to also provide insights into these trade-offs by running field experiments that vary design aspects of smart surveys. An overview of the design of all tests will be published in summer 2024, with findings from all tests and recommendations for a research methodology for smart surveys released by the end of the project in spring 2025. This deliverable does not discuss trade-offs between design elements in detail, but instead focuses on earlier research into the issues of recruitment and retainment, machine learning, usability and the mode-effect in data integration in four separate chapters.."

# Summary. An optional shortened abstract.
summary: ""

tags: [Smart_survey, designed_big_data, review_study, eurostat, official_statistics,CBS]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "https://cros.ec.europa.eu/system/files/2024-05/SSI%20deliverable%202.1%20-%20Review%20stage%20report%20Methodology.pdf"
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
