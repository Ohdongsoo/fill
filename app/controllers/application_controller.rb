class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 회원가입 시 name 저장 허용
    devise_parameter_sanitizer.permit(:account_update, keys: [:name]) # 계정 수정할 때도 name저장 허용
    devise_parameter_sanitizer.permit(:sign_up, keys: [:reg]) # 회원가입 시 regs 저장 허용
    devise_parameter_sanitizer.permit(:account_update, keys: [:reg]) # 계정 수정할 때도 reg저장 허용
    devise_parameter_sanitizer.permit(:sign_up, keys: [:birth]) # 회원가입 시 regs 저장 허용
    devise_parameter_sanitizer.permit(:account_update, keys: [:birth]) # 계정 수정할 때도 reg저장 허용
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone]) # 회원가입 시 regs 저장 허용
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone]) # 계정 수정할 때도 reg저장 허용
  end
end
