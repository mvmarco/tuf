class ContactMailer < ApplicationMailer
  def contact(full_name, phone, email, message)
    @full_name = full_name
    @phone = phone
    @email = email
    @message = message

    mail()
  end
end
