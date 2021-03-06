# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

initiative_topic_blob = "Before/After School
Behavior / School Climate
Collaboration/Relationship Building
Co-Teaching 
Data Collection
Differentiating Instruction
Disproportionality
Early Childhood
Family Engagement 
Induction Mentoring 
Integrated Three Tiered Model of Intervention
Leadership Development
Legislation/Policy Changes
Low Incidence Disabilities
LRE
Math
Progress Monitoring
PTI Involvement
Reading/Literacy/Language Arts
Recruitment for Higher Ed
Recruitment Minority Populations
Restructuring preservice teacher education
Restructuring Teacher Licensure
Teacher Recruitment and/or Retention
RtI
Scaling-Up
Science
Secondary Transition"

initiative_topic_blob.split("\n").each do |topic|
  Topic.create :name => topic.strip
end

state_list = [
    {:name => 'Arkansas', :abbrev => 'AR'},
    {:name => 'Alabama', :abbrev => 'AL'},
    {:name => 'Florida', :abbrev => 'FL'},
    {:name => 'Georgia', :abbrev => 'GA'},
    {:name => 'Louisiana', :abbrev => 'LA'},
    {:name => 'Mississippi', :abbrev => 'MS'},
    {:name => 'Oklahoma', :abbrev => 'OK'},
    {:name => 'Texas', :abbrev => 'TX'},
    {:name => 'Puerto Rico', :abbrev => 'PR'},
    {:name => 'Virgin Islands', :abbrev => "VI"},
    {:name => 'Kentucky', :abbrev => 'KY'},
    {:name => 'North Carolina', :abbrev => 'NC'},
    {:name => 'South Carolina', :abbrev => 'SC'},
    {:name => 'Tennessee', :abbrev => 'TN'},
    {:name => 'Virginia', :abbrev => 'VA'},
    {:name => 'Delaware', :abbrev => 'DE'},
    {:name => 'District of Columbia', :abbrev => 'DC'},
    {:name => 'Maryland', :abbrev => 'MD'},
    {:name => 'New Jersey', :abbrev => 'NJ'},
    {:name => 'West Virginia', :abbrev => 'WV'},
    {:name => 'Maine', :abbrev => 'ME'},
    {:name => 'Vermont', :abbrev => 'VT'},
    {:name => 'New Hampshire', :abbrev => 'NH'},
    {:name => 'Massachusetts', :abbrev => 'MA'},
    {:name => 'Rhode Island', :abbrev => 'RI'},
    {:name => 'Connecticut', :abbrev => 'CT'},
    {:name => 'New York', :abbrev => 'NY'},
    {:name => 'Minnesota', :abbrev => 'MN'},
    {:name => 'Iowa', :abbrev => 'IA'},
    {:name => 'Missouri', :abbrev => 'MO'},
    {:name => 'Illinois', :abbrev => 'IL'},
    {:name => 'Indiana', :abbrev => 'IN'},
    {:name => 'Ohio', :abbrev => 'OH'},
    {:name => 'Pennsylvania', :abbrev => 'PA'},
    {:name => 'Michigan', :abbrev => 'MI'},
    {:name => 'Wisconsin', :abbrev => 'WI'},
    {:name => 'North Dakota', :abbrev => 'ND'},
    {:name => 'Montana', :abbrev => 'MT'},
    {:name => 'Wyoming', :abbrev => 'WY'},
    {:name => 'South Dakota', :abbrev => 'SD'},
    {:name => 'Nebraska', :abbrev => 'NB'},
    {:name => 'Utah', :abbrev => 'UT'},
    {:name => 'Colorado', :abbrev => 'CO'},
    {:name => 'Kansas', :abbrev => 'KS'},
    {:name => 'New Mexico', :abbrev => 'NM'},
    {:name => 'Arizona', :abbrev => 'AZ'},
    {:name => 'Idaho', :abbrev => 'ID'},
    {:name => 'Washington', :abbrev => 'WA'},
    {:name => 'Oregon', :abbrev => 'OR'},
    {:name => 'California', :abbrev => 'CA'},
    {:name => 'Alaska', :abbrev => 'AK'},
    {:name => 'Hawaii', :abbrev => 'HI'},
    {:name => 'Nevada', :abbrev => 'NV'},
    {:name => 'Federated States of Micronesia', :abbrev => 'FSM'},
    {:name => 'Guam', :abbrev => 'GU'},
    {:name => 'Commonwealth of the Northern Marianna Islands', :abbrev => 'CNMI'},
    {:name => 'Republic of Palau', :abbrev => 'RP'},
    {:name => 'Republic of the Marshall Islands', :abbrev => 'RMI'},
    {:name => "Bureau of Indian Education", :abbrev => 'BIE'}
]

state_list.each do |state|
  State.create state
end

stage_list = [
    {:name => 'Pre-Exploration'},
    {:name => 'Exploration'},
    {:name => 'Installation'},
    {:name => 'Initial Installation'},
    {:name => 'Full Installation'},
]

stage_list.each do |stage|
  Stage.create stage
end


pd_list = [
    {:name => 'Pre-Service Teachers'},
    {:name => 'In-Service Teachers'},
    {:name => 'Paraprofesionals'},
    {:name => 'Administrators'},
    {:name => 'Minority Populations'},
    {:name => 'Parent/Family'},
]

pd_list.each do |pd|
  Professionaldevelopment.create pd
end


pop_list = [
    {:target => 'Pre-Service Teachers'},
    {:target => 'In-Service Teachers'},
    {:target => 'Paraprofesionals'},
    {:target => 'Administrators'},
    {:target => 'Minority Populations'},
    {:target => 'Parent/Family'},
]

pop_list.each do |pop|
  Population.create pop
end

