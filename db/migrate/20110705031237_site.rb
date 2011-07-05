class Site < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string    :name
      t.text      :desc
      t.string    :img_file_name
      t.string    :img_content_type
      t.integer   :img_file_size
      t.datetime  :img_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
