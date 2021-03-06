class Implementation < ActiveRecord::Base
  belongs_to :initiative
  has_and_belongs_to_many :stages
  default_scope order('year ASC')
  
  validates_presence_of :year
end
