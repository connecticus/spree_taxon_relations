class CreateTaxonRelations < ActiveRecord::Migration
  def change
    create_table :spree_taxon_relations do |t|
      t.integer :taxon_id
      t.integer :related_taxon_id

      t.timestamps
    end
  end
end
