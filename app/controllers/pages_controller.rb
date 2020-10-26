class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :donate, :send_contact]
  skip_before_action :verify_authenticity_token [:home, :donate, :send_contact]

  def send_contact
    if ContactMailer.contact(params[:message]).deliver
      flash.now[:success] = "Message sent"
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message, please call us.'
      redirect_to root_path
    end
  end
  

  def home
  end
  
  def donate
  end
  
end
