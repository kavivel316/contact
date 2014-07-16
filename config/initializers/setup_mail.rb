ActionMailer::Base.smtp_settings = {
  :user_name => 'kavivel316@gmail.com',
  :password => 'imissuana',
  :domain => 'gmail.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}