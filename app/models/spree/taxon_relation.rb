module Spree
  class TaxonRelation < ActiveRecord::Base
    #attr_accessible :related_taxon_id, :taxon_id,:relation_properties_attributes
    belongs_to :taxon
    belongs_to :related_taxon, class_name: 'Spree::Taxon'

    validates :related_taxon, :presence=>true
    validates :taxon, :presence=>true

  end
end
