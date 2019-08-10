# frozen_string_literal: true

module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:token] = user.token
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    elsif cookies.signed[:user_id]
      user = User.find_by(id: cookies.signed[:user_id])
      @current_user = user if user&.authenticated?(cookies[:token])
    end
  end

  def logged?
    !current_user.nil?
  end

  def logout
    if logged?
      current_user.forget
      cookies.delete(:user_id)
      cookies.delete(:token)
      session.delete(:user_id)
      @current_user = nil
    end
  end
end
