class Initiative < ActiveRecord::Base
  belongs_to :state
  has_many :implementations, :dependent => :destroy
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :populations
  has_and_belongs_to_many :professionaldevelopments
  
  validates :name, :state, :start_year, :end_year,  :presence => true
  accepts_nested_attributes_for :implementations, :allow_destroy => true, :reject_if => :all_blank
  
  def contact
     state.contact
  end
  
  def must_have_at_least_one_topic
    if topics.count < 1
      errors.add(:base, 'You must select at least one implementation topic') 
      return false
    end
  end
  
  def must_have_at_least_one_population
    if populations.count < 1
     errors.add(:base, 'You must select at least one population target') 
     return false
    end
  end
  
  def must_have_at_least_one_pd
    if professionaldevelopments.count < 1
      errors.add(:base, 'You must select at least one pd receiver')
      return false
    end
  end
  
end
