ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "todone.com",
  :user_name            => "todone_cron",
  :password             => "secret",
  :authentication       => "plain",
  :enable_starttls_auto => true
}