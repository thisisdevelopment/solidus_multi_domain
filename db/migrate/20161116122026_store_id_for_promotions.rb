class StoreIdForPromotions < ActiveRecord::Migration
  def self.up
    if table_exists?('promotions')
      add_column :promotions, :store_id, :integer
      add_index :promotions, :store_id
    elsif table_exists?('spree_promotions')
      add_column :spree_promotions, :store_id, :integer
      add_index :spree_promotions, :store_id
    end
  end

  def self.down
    if table_exists?('promotions')
      remove_column :promotions, :store_id, :integer
    elsif table_exists?('spree_promotions')
      remove_column :spree_promotions, :store_id, :integer
    end
  end
end
