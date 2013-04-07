class State < ActiveRecord::Base
   has_many :initiatives, :dependent => :destroy
   has_one  :contact, :dependent => :destroy
   default_scope order('abbrev, name ASC')
   
   validates :name, :abbrev,  :presence => true
end
