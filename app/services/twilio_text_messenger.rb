class TwilioTextMessenger

    attr_reader :message

    def initialize(message)
        @message = message
    end

    def notify_phone

        account_sid = Rails.application.credentials.twilio_account_sid
        auth_token = Rails.application.credentials.twilio_auth_token
      

        client = Twilio::REST::Client.new(account_sid, auth_token)
        client.messages.create({
            from: Rails.application.credentials.twilio_phone_number,
            to: '+2203668301',
            body: message
        })

    end

end