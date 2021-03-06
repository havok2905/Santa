class Party < ActiveRecord::Base
  has_many :participant

  def shuffled_party

    mail_list = []
    participants = self.participant.all.shuffle

    participants.each_with_index do |person, index|
      unless index + 1 == participants.count
        gift_recipient = participants[index + 1].name
      else
        gift_recipient = participants.first.name
      end

      mail_list << { email: person.email, gift_recipient: gift_recipient }
    end

    mail_list
  end

  def poop(mail_list)
    mail_list.each do |message|
      PartyMailer.gift_email(message).deliver
    end
  end
end
