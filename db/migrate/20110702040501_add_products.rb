class AddProducts < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :name
      t.string :desc
      t.string :img
      t.timestamps
    end
    
    create_table :products do |t|
      t.integer :service_id
      t.string :name
      t.float :price
      t.string :desc
      t.string :img
      t.timestamps
    end
  end

  def self.down
    drop_table :services
    drop_table :products
  end
end
