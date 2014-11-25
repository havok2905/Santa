class PartyMailer < ActionMailer::Base
  default from: "info@cloudspace.com"

  def gift_email(hash)
    @gift_recipient = hash[:gift_recipient]
    mail to: hash[:email], subject: 'Super awesome secret santa message'
  end
end
