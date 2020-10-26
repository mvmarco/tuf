class ContactMailer < ApplicationMailer
  def contact(message)
    @message = message
    mail(to: 'amandatiemann@gmail.com', subject: 'Hey you got a new message from your new website!')
  end
end
