class Admin::SessionsController < ApplicationController
  layout 'admin'

  def new; end

  def create
    user = AdminUser.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:admin_id] = user.id
      redirect_to admin_services_url, notice: 'Signed in!'
    else
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to new_admin_session_url, notice: 'Signed out.'
  end
end
