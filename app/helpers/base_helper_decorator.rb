Spree::BaseHelper.module_eval do
  def taxons_tree(root_taxon, current_taxon, max_level=1)
    return '' if max_level < 1 || root_taxon.children.empty?
    ul_css = max_level > 1 ? 'primary' : 'secondary'
    content_tag :ul, class: "taxons-list #{ul_css}" do
      root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        content_tag :li, class: css_class do
         link_to(taxon.name, seo_url(taxon)) +
         taxons_tree(taxon, current_taxon, max_level - 1)
        end
      end.join("\n").html_safe
    end
  end
end