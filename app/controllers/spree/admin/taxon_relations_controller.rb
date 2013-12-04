module Spree
  module Admin
    class TaxonRelationsController < ResourceController
      def attach
        Spree::AttachProductsWorker.perform_async(params[:id])
        redirect_to admin_taxon_relations_path, :notice => Spree.t(:attaching_products_started)
      end
    end
  end
end
