class Service < ActiveRecord::Base
  has_many :products
    has_attached_file :img, 
                    :styles => { :medium => "400x280>",
                                 :small => "200x140>" }                                
  validates_presence_of :name, :img, :desc                             
  validates_length_of :name, :maximum => 45
  validates_length_of :desc, :maximum => 785
end