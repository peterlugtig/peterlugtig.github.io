---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Automatic Travel Mode Prediction in a National Travel Survey"
authors: [Smeets, L.M.S., Lugtig, P., and Schouten, J.G.]
date: 2019-12-01T00:00:00+01:00
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: 2019-012-01T00:00:00+01:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["4"]

# Publication name and optional abbreviated publication name.
publication: "*CBS Discussion Paper*"
publication_short: ""

abstract: "Goal: Showing the feasibility of automatic travel mode prediction using smartphone location data in a national travel survey. Data collection: In the fall of 2018, 1,902 respondents were randomly sampled from the Dutch population to participate in a smartphone-based travel study. A purpose-built app that collected location data and generated a diary of stops and trips was used. For the trips, respondents could label which travel mode they used. Of the respondents, 517 completed data collection for at least 7 days and a total 18,414 trips were collected, of which 5,641 were labelled. Method: Every trip consists of a string of chronological ordered GPS points. From these points, trip-level features were engineered, such as average speed. Context-location data, such as the location of public transport stops, was then added and extra features such as how many train stations were passed during a trip were calculated. In addition, the data was enriched with respondent-level characteristics, available through Dutch registries. In total 127 features were engineered. A Random Forest Algorithm was then used to predict travel modes from these features. The transport modes distinguished are: Walking, Bike, E-bike, Car, Bus, Metro, Tram, Scooter, Train, and erroneously recorded trips. This last one is unique to this research, but inherent to app-based studies. Results: For 62% of trips the correct transport mode is predicted, when treating trips as independent events. Taking into account how often respondents used a certain transport mode increases the accuracy to 70%. Collapsing similar transport modes, such as bikes and E-bikes, also positively affects the accuracy. However, not all modes of transport can be as accurately classified."

# Summary. An optional shortened abstract.
summary: ""

tags: [CBS, travel_mode, smart_survey, GPS, machine_learning]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: https://www.cbs.nl/-/media/_pdf/2019/51/dp%20smeets-lugtig-schouten%20-%20vervoermiddelpredictie.pdf
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
