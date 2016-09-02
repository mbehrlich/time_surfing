class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    User.find_by(session_token: session[:session_token])
  end

  def login(user)
    user.reset_session_token
    session[:session_token] = user.session_token
  end

  def logout
    current_user.reset_session_token
    session[:session_token] = nil
  end

  def ensure_logged_in
    unless current_user
      render json: ["Forbidden"], status: 404
    end
  end

  def ensure_not_logged_in
    if current_user
      render json: ["Already logged in"], status: 403
    end
  end

  def ensure_correct_user
    unless current_user.id == params[:id].to_i
      render json: ["Forbidden"], status: 404
    end
  end

end
