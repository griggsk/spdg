class Contact < ActiveRecord::Base
  belongs_to :state 
  default_scope order('first ASC')
  
  validates :first, :last, :email, :presence => true
  
  def name
    first + " " + last
  end
end
