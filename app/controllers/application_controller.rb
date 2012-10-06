class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_admin
    @current_admin ||= AdminUser.find(session[:admin_id]) if session[:admin_id].present?
  end

  helper_method :current_admin
end
