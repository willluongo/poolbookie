class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
private
  def authenticate_admin!
    unless current_user && current_user.isAdmin?
      flash[:alert] = "You must be an admin to do that!"
      redirect_to :root
    end
  end
end
