---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Predicting trip purpose in a smartphone‐based travel survey"
authors: [Zahroh, S., Lugtig,P. Gootzen, Y., Klingwort, J, .Schouten, J.G.]
date: 2025-11-24T00:00:00+01:00
doi: "10.1177/18747655251391283"

# Schedule page publish date (NOT publication's date).
publishDate:

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "Statistical Journal of the IAOS"
publication_short: 

abstract: "Population‐wide travel surveys are conducted to investigate individuals’ patterns of traveling.
These surveys are often burdensome. The widespread use of smartphones allows for the
collection of trip data without relying on traditional travel survey diary responses. Location
monitoring data can be utilized to split the day into segments where someone is traveling (track),
or is stationary (stop). Currently, respondents have to label each trip and stop, what mode of
transport they travel with, and what the purpose of a stop is (e.g. shopping, work, school, home).
By integrating GPS data from smartphones with administrative data and temporal and spatial
data, this paper studies to what degree it is possible to automatically predict the trip purpose.
Multiple machine‐learning models were trained and evaluated to unveil the effectiveness of
stop‐purpose prediction. In late 2022, Statistics Netherlands collected GPS data that contained
12 distinct labels denoting the purposes of the trips. The most optimal artificial neural network
model and extreme gradient boosting technique obtained a balanced accuracy of 90% for the
purpose of being at home. Primarily, classes that included only a small number of observations
were erroneously categorized as classes with a large number of observations. Administrative
data do not help to improve model prediction beyond spatiotemporal covariates. Increasing the
duration of data gathering substantially enhanced the precision of the model. To summarize,
smartphone‐based travel data has considerable potential as a data source for trip purpose
prediction but cannot yet be used to predict trip purpose automatically."

# Summary. An optional shortened abstract.
summary: ""

tags: [CBS, smart_survey, designed_big_data, travel_mode, Machine_Learning, GPS]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "https://www.cbs.nl/-/media/_pdf/2025/24/ava_trip_purpose_prediction.pdf"
url_code: 
url_dataset:
url_poster:
url_project: 
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
