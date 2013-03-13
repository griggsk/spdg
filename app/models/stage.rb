class Stage < ActiveRecord::Base
   has_and_belongs_to_many :implementations
  
  validates :name,  :presence => true
end
