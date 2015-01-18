# replace homepage products
Deface::Override.new(
  :virtual_path => "spree/products/index",
  :name => "home_index_replace_homepage_products",
  :replace_contents => "[data-hook='homepage_products']",
  :partial => "spree/home/products"
  )