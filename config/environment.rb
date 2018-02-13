# Load the Rails application.
<<<<<<< HEAD
require File.expand_path('../application', __FILE__)
=======
require_relative 'application'
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
<<<<<<< HEAD
  :address => 'smtp.sendgrid.net', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SENDGRID_USERNAME'], 
  :password => ENV['SENDGRID_PASSWORD'], 
  :domain => 'heroku.com', 
  :enable_starttls_auto => true 
=======
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
}
