
Deface::Override.new(
  :virtual_path => "spree/taxons/show",
  :name => "taxons_show_add_children",
  :insert_before => "[data-hook='taxon_products']",
  :partial => "spree/taxons/children"
  )