class ContactMailer < ApplicationMailer
    def contact(name, phone_number, email, data)
      @body="Name: #{name}\nEmail: #{email}\nPhone number: #{phone_number}\n\nMessage:\n\n#{data}"
      mail(to: ENV["ADMIN_EMAIL"], subject: 'Customer request for TuF')
    end
end
