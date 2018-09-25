class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # before_filter :configure_permitted_params, if: :devise_controller?
  #
  # def configure_permitted_params
  #
  # end
end
