module Admin
  class AdminController < ApplicationController

    before_filter :require_admin
    layout 'admin'

    private
    def require_admin
      redirect_to new_admin_session_url and return unless current_admin.present?
    end

  end
end