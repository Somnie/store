class Service < ActiveRecord::Base
  
  has_many :products
    has_attached_file :img, 
                    :styles => { :medium => "400x280>",
                                 :small => "200x140>" }
end