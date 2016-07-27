class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def logged_in
    @logged_in ||= session[:member_id] ? Member.find_by(id: session[:member_id]) : false
  end
  helper_method :logged_in
end
