# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Profiles::Application.initialize!

ENV['ADMIN_EMAIL'] = 'kgriggs@uoregon.edu'

ENV['ADMIN_PASSWORD'] ='spdgpassword'
