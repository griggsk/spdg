class Contact < ActiveRecord::Base
  belongs_to :state 
  
  validates :first, :last, :email,  :presence => true
  
  def name
    first + " " + last
  end
end
