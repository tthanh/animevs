class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    flash[:danger] = "404 ERROR. PAGE NOT FOUND!"
    redirect_to root_url
  end

end
