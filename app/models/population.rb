class Population < ActiveRecord::Base
  has_and_belongs_to_many :initiatives
  
  validates :target,  :presence => true

end
