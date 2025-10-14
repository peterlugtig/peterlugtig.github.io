---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Dynamic Time Warping-based imputation of long gaps in human mobility trajectories"
authors: [McCool,D.M., Lugtig, P. & Schouten, J.G.]
date: 2024-11-21T00:00:00+01:00
doi: "doi: 10.48550/arXiv.2410.16096"

# Schedule page publish date (NOT publication's date).
publishDate:

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["3"]

# Publication name and optional abbreviated publication name.
publication: "*ArXiv*, preprint 2410.16096"
publication_short: 

abstract: "Individual mobility trajectories are difficult to measure and often incur long periods of missingness. Aggregation of this mobility data without accounting for the missingness leads to erroneous results, underestimating travel behavior. This paper proposes Dynamic Time Warping-Based Multiple Imputation (DTWBMI) as a method of filling long gaps in human mobility trajectories in order to use the available data to the fullest extent. This method reduces spatiotemporal trajectories to time series of particular travel behavior, then selects candidates for multiple imputation on the basis of the dynamic time warping distance between the potential donor series and the series preceding and following the gap in the recipient series and finally imputes values multiple times. A simulation study designed to establish optimal parameters for DTWBMI provides two versions of the method. These two methods are applied to a real-world dataset of individual mobility trajectories with simulated missingness and compared against other methods of handling missingness. Linear interpolation outperforms DTWBMI and other methods when gaps are short and data are limited. DTWBMI outperforms other methods when gaps become longer and when more data are available."

# Summary. An optional shortened abstract.
summary: ""

tags: [CBS, sensors, official_statistics, app, missing_data, GPS, imputation]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "https://link-springer-com/content/pdf/10.1007/s11116-022-10328-2.pdf"
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
