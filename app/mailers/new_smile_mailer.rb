class NewSmileMailer < ActionMailer::Base
  default from: "anna@shareyoursmiles.org"

  def new_smile_email
    mail(to: "anna@shareyoursmiles.org", subject: 'Someone smiled!')
  end
end
