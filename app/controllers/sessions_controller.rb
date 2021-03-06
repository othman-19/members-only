# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email])
    if user&.authenticate(params[:session][:password])
      log_in(user)
      remember(user)
      redirect_to posts_path
    end
  end

  def destroy
    logout
    redirect_to posts_path
  end
end
