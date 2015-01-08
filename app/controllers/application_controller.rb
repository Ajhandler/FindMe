class ApplicationController < ActionController::Base
  # :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:phone_number, :last_name, :first_name, :avatar, :email, :password) }
  end
end
