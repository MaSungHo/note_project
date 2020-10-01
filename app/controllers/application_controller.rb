class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #devise controller일 때만 적용

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name))
  end

end
