# remove the logo
Deface::Override.new(
  :virtual_path => "spree/shared/_header",
  :name => "shared_header_remove_logo",
  :remove => "figure"
  )