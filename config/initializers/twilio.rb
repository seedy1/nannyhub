Twilio.configure do |config|

   config.account_sid = Rails.application.credentials.twilio_account_sid
  config.auth_token = Rails.application.credentials.twilio_auth_token

end

#twilio_account_sid
#twilio_account_auth: 
#twilio_phone_number: 