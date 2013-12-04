require 'sidekiq'
module Spree
  class AttachProductsWorker
    include Sidekiq::Worker
    sidekiq_options :queue => :attach_products, :backtrace => true

    def perform(taxon_relation_id)
      taxon_relation = Spree::TaxonRelation.find(taxon_relation_id)
      Spree::ProductAttacher.new(taxon_relation).attach
    end

  end
end
