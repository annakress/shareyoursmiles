class NewSmileMailer < ActionMailer::Base
  default from: "admin@shareyoursmiles.org"

  def new_smile_email
    mail(to: "admin@shareyoursmiles.org", subject: 'Someone smiled!')
  end
end
