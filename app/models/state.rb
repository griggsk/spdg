class State < ActiveRecord::Base
   has_many :initiatives, :dependent => :destroy
   has_one  :contact, :dependent => :destroy
  validates :name, :abbrev,  :presence => true
end
