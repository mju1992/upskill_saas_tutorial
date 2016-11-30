# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::base.smtp_settings = {
  :port           => ENV['MAILGUN_SMPT_PORT']
  :address        => ENV['MAILGUN_SMPT_SERVER']
  :user_name      => ENV['MAILGUN_SMPT_logini']
  :password       => ENV['MAILGUN_SMPT_PASSWORD']
  :domain         => 'murmuring-garden-87930.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smpt
