class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :ensure_loggedin

  def ensure_loggedin
    if session['cas'].nil? || session['cas']['user'].nil?
      render status: 401, text: "redirecting to SSO..."
    end
  end
end
