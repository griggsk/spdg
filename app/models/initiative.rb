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
  
  def get_implementations
    imps = Hash.new
    implementations.each do |implementation|
        imps[implementation.year] = implementation.stages.collect(&:name).join(", ")
    end
  end
  
end
