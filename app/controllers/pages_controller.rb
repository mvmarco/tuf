class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :donate ]

  def home
  end
  
  def donate
  end
end
