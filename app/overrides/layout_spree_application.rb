# move header outside the container div
Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "layouts_spree_application_remove_header",
  :remove => "erb[loud]:contains('spree/shared/header')",
  :original => "<%= render :partial => 'spree/shared/header' %>"
  )

Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "layouts_spree_application_add_header",
  :insert_before => "div.container",
  :partial => "spree/shared/header"
  )