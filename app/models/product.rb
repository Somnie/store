class Product < ActiveRecord::Base
  belongs_to :service
    has_attached_file :img, 
                    :styles => { :medium => "400x280>",
                                 :small => "200x140>" }
end