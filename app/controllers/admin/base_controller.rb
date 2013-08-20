class Admin::BaseController < ApplicationController

  before_filter :authenticate_admin!


  def index

  end


  private
  def authenticate_admin!
    if !current_user.try(:admin?)
      flash[:alert] = "You need to be an admin to access that"
      redirect_to root_path
    end
  end
end
