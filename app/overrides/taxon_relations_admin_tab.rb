Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "taxon_relations_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:taxon_relations, :icon => 'icon-sitemap') %>",
                     :disabled => false)
