class ImgManager < ActiveRecord::Migration
  def self.up
    add_column :services, :img_file_name,    :string
    add_column :services, :img_content_type, :string
    add_column :services, :img_file_size,    :integer
    add_column :services, :img_updated_at,   :datetime
    
    add_column :products, :img_file_name,    :string
    add_column :products, :img_content_type, :string
    add_column :products, :img_file_size,    :integer
    add_column :products, :img_updated_at,   :datetime
    
    remove_column :services, :img
    remove_column :products, :img
  end

  def self.down
    remove_column :services, :img_file_name
    remove_column :services, :img_content_type
    remove_column :services, :img_file_size
    remove_column :services, :img_updated_at

    remove_column :products, :img_file_name
    remove_column :products, :img_content_type
    remove_column :products, :img_file_size
    remove_column :products, :img_updated_at
    
    add_column :services, :img, :string
    add_column :products, :img, :string
  end
end
