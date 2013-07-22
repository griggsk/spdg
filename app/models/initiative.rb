class Initiative < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper
  
  belongs_to :state
  has_many :implementations, :dependent => :destroy
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :populations
  has_and_belongs_to_many :professionals
  
  validates :name, :state, :start_year, :end_year,  :presence => true
  accepts_nested_attributes_for :implementations, :allow_destroy => true, :reject_if => :all_blank
  
  def contact
     state.contact
  end


  # ===============
   # = CSV support =
   # ===============
   comma do
     state :name => 'State'

     name 'Initiative Title'
     start_year
     end_year
     santizedescription 'Description'
     contactname 'Contact Name'
     contactemail 'Contact Email'

     topiclist 'Initiative Topics'
     poplist 'Population Targets'
     pdlist 'PD Receivers'
     implmentationstages 'Stages of Implementation'
   end
   
  def contactname
    if contact
      contact.name
    else
      'No Contact'
     end
  end
  
  def contactemail
     if contact
      contact.email
     else
       ''
     end
  end
  
  def santizedescription
   strip_tags(description)  
  end
  
  def topiclist
    topics.collect(&:name).join('; ')
  end
  
  def pdlist
    professionals.collect(&:name).to_sentence(:two_words_connector => ' & ', :last_word_connector => ' & ')
  end
  
  def poplist
    populations.collect(&:target).to_sentence(:two_words_connector => ' & ', :last_word_connector => ' & ')
  end
  
  def implmentationstages
    implmentationstages = []
    implementations.each do |implementation|
        implmentationstages << implementation.year.to_s + ': '+ implementation.stages.collect(&:name).join(" & ")
    end
    return implmentationstages.to_sentence(:two_words_connector => ', ', :last_word_connector => ', ')
  end
  
end
