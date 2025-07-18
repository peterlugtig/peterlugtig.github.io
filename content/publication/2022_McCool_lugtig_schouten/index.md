---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Maximum interpolable gap length in missing smartphone-based GPS mobility data"
authors: [McCool,D.M., Lugtig, P. & Schouten, J.G.]
date: 2022-09-22T00:00:00+01:00
doi: "doi: 10.1007/s11116-022-10328-22"

# Schedule page publish date (NOT publication's date).
publishDate:

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*Transportation*,51, 297–327. 10.1007/s11116-022-10328-22"
publication_short: 

abstract: "Passively-generated location data have the potential to augment mobility and transportation
research, as demonstrated by a decade of research. A common trait of these data is a high
proportion of missingness. Naïve handling, including list-wise deletion of subjects or days,
or linear interpolation across time gaps, has the potential to bias summary results. On the
other hand, it is unfeasible to collect mobility data at frequencies high enough to reflect all
possible movements. In this paper, we describe the relationship between the temporal and
spatial aspects of these data gaps, and illustrate the impact on measures of interest in the
field of mobility. We propose a method to deal with missing location data that combines a
so-called top-down ratio segmentation method with simple linear interpolation. The linear
interpolation imputes missing data. The segmentation method transforms the set of location
points to a series of lines, called segments. The method is designed for relatively short
gaps, but is evaluated also for longer gaps. We study the effect of our imputation method
for the duration of missing data using a completely observed subset of observations from
the 2018 Statistics Netherlands travel study. We find that long gaps demonstrate greater
downward bias on travel distance, movement events and radius of gyration as compared to
shorter but more frequent gaps. When the missingness is unrelated to travel behavior, total
sparsity can reach levels of up to 20% with gap lengths of up to 10 min while maintaining
a maximum 5% downward bias in the metrics of interest. Temporal aspects can increase
these limits; sparsity occurring in the evening or night hours is less biasing due to fewer
travel behaviors."

# Summary. An optional shortened abstract.
summary: ""

tags: [sensors, official statistics, app, missing data, statistics netherlands,location data]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "https://link.springer.com/article/10.1007/s11116-022-10328-2"
url_code: ""
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
