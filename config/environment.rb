# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMPT_PORT'],
  :address        => ENV['MAILGUN_SMPT_SERVER'],
  :user_name      => ENV['MAILGUN_SMPT_LOGIN'],
  :password       => ENV['MAILGUN_SMPT_PASSWORD'],
  :domain         => 'murmuring-garden-87930.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smpt


