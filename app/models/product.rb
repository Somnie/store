class Product < ActiveRecord::Base
  belongs_to :service
    has_attached_file :img, 
                    :styles => { :medium => "400x280>",
                                 :small => "200x140>" }
  validates_presence_of :name, :price, :desc, :desc_long, :img                              
  validates_numericality_of :price
  validates_length_of :name, :maximum => 45
end