class Topic < ActiveRecord::Base
   has_and_belongs_to_many :initiatives
  
   validates :name,  :presence => true
end