class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :donate ]

  def new
    @contact=Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = "Message sent"
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
  

  def home
  end
  
  def donate
  end
  
end
