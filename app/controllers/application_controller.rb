class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: -> {api_req?}
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def api_req?
  	request.format.json?
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :shift, :department_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :shift, :department_id])
  end
end
