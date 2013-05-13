class Professional < ActiveRecord::Base
  has_and_belongs_to_many :initiatives
  default_scope order('name ASC')
  validates :name,  :presence => true

end
