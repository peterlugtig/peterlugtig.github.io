+++
# Slider widget.
widget = "slider"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = false  # Activate this widget? true/false
weight = 1  # Order that this section will appear.

# Slide interval.
# Use `false` to disable animation or enter a time in ms, e.g. `5000` (5s).
interval = 4000

# Slide height (optional).
# E.g. `500px` for 500 pixels or `calc(100vh - 70px)` for full screen.
height = "250px"

# Slides.
# Duplicate an `[[item]]` block to add more slides.
[[item]]
  title = "Posts"
  content = ""
  align = "center"  # Choose `center`, `left`, or `right`.

  # Overlay a color or image (optional).
  #   Deactivate an option by commenting out the line, prefixing it with `#`.
  overlay_color = "#555"  # An HTML color value.
  overlay_img = "headers/bg_slider_peter.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.7  # Darken the image. Value in range 0-1.

  # Call to action button (optional).
  #   Activate the button by specifying a URL and button label below.
  #   Deactivate by commenting out parameters, prefixing lines with `#`.
  cta_label = "Posts"
  cta_url = "https://www.uu.nl/staff/plugtig/Research%20output"
  cta_icon_pack = "fas"
  cta_icon = "newspaper"

[[item]]
  title = "Publications"
  content = ""
  align = "center"

  overlay_color = "#808080"  # An HTML color value.
  overlay_img = "headers/publications_slider_peter.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.7  # Darken the image. Value in range 0-1.
  
  # Call to action button (optional).
  #   Activate the button by specifying a URL and button label below.
  #   Deactivate by commenting out parameters, prefixing lines with `#`.
  cta_label = "Publications"
  cta_url = "publications/"
  cta_icon_pack = "fas"
  cta_icon = "graduation-cap"

[[item]]
  title = "Projects"
  content = ""
  align = "center"

  overlay_color = "#555"  # An HTML color value.
  overlay_img = "headers/project_slider_peter.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.7  # Darken the image. Value in range 0-1.
  
  cta_label = "Current projects"
  cta_url = "projects/"
  cta_icon_pack = "fas"
  cta_icon = "network-wired"
+++
