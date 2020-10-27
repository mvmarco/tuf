class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :donate, :send_contact]

  def send_contact
    good_params = validate_params;
    if !good_params
      flash[:error] = "You must fill in the form fields."
      return redirect_to root_path
    end

    if ContactMailer.contact(params[:full_name], params[:phone], params[:email], params[:message]).deliver
      flash[:success] = "Message sent."
    else
      flash[:error] = 'Cannot send message, please call us.'
    end

    redirect_to root_path
  end

  def home
    puts ENV["SMTP_PASSWORD"]
  end
  
  def donate
  end

  private

  def validate_params
    return false unless params[:full_name].present? && params[:phone].present? && params[:email].present? && params[:message].present?
    return false if params[:full_name].length < 2 or params[:full_name].length > 100
    return false if params[:message].length < 10 or params[:message].length > 4000
    return false unless params[:email] =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    return false unless params[:phone] =~ /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\.\/0-9]*$/i

    return true
  end
  
end
