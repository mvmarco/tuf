class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :donate, :send_contact ]
  
  def send_contact
    customer_name = params[:message][:name]
    email = params[:message][:email]
    phone_number = params[:message][:phone]
    data = params[:message][:body]
    ContactMailer.contact(customer_name, phone_number, email, data).deliver
    redirect_to root_path, notice: "Message sent"
  end
  

  def home
  end
  
  def donate
  end
  
end
