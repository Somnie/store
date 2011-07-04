class DescriptionMod < ActiveRecord::Migration
  def self.up
        add_column :products, :desc_long,     :string
  end

  def self.down
        remove_column :products, :desc_long,  :string
  end
end
