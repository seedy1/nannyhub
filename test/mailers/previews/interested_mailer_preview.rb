# Preview all emails at http://localhost:3000/rails/mailers/interested_mailer
class InterestedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/interested_mailer/notify
  def notify
    InterestedMailer.notify
  end

end
