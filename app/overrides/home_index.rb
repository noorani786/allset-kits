# replace homepage products
Deface::Override.new(
  :virtual_path => "spree/home/index",
  :name => "home_index_replace_products",
  :replace_contents => "[data-hook='homepage_products']",
  :partial => "spree/home/products"
  )