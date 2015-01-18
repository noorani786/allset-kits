# don't show "Shop by" headings
Deface::Override.new(
  :virtual_path => "spree/shared/_taxonomies",
  :name => "shared_taxonomies_hide_shopby",
  :remove => "h6"
  )

# show only categories
