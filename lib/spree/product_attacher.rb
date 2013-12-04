module Spree
  class ProductAttacher

    attr_reader :taxon_relation, :log

    def initialize(taxon_relation)
      @taxon_relation = taxon_relation
      @log = Logger.new(STDOUT)
    end

    def attach
      log.info "Started products attaching"
      Spree::Product.in_taxon(taxon_relation.related_taxon).each do |product|
        unless product.taxons.exists?(taxon_relation.taxon)
          product.taxons << taxon_relation.taxon
          product.update_attribute(:available_on, Time.zone.now)
          log.info "Product #{product.name} attached to #{taxon_relation.taxon.pretty_name}"
        end
      end
    end

  end
end
