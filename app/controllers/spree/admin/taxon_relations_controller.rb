module Spree
  module Admin
    class TaxonRelationsController < ResourceController
      def index
        @taxon_relations = @taxon_relations.order("created_at desc").page(params[:page]).per(Spree::Config[:admin_products_per_page])
      end

      def attach
        Spree::AttachProductsWorker.perform_async(params[:id])
        redirect_to admin_taxon_relations_path, :notice => Spree.t(:attaching_products_started)
      end
    end
  end
end
