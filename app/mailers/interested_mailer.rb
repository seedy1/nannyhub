class InterestedMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.interested_mailer.notify.subject
  #
  def notify(user)
    # @greeting = "Hi"

    @user = user

    mail to: @user.email, subject: "Interested Nanny"
  end
end
