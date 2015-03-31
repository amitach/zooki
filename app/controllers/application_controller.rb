class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user_from_admin

  def authenticate_user_from_admin

    cookie = cookies["_zoom_session"]
    if !cookie.present?
      render text: "You are not authorized to view this page", status: 403
    end
  end
end
