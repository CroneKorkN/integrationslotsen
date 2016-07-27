class SessionsController < ApplicationController
  def new

  end

  def create
    member = Member.find_by(email: params[:email])
    if member && member.authenticate(params[:password])
      
      # login successful
      session[:member_id] = member.id
      redirect_to dashboard_url, notice: 'Logged in!'
    else
      
      # login failed
      redirect_to root_url
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
