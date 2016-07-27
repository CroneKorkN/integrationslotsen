class DashboardController < ApplicationController
  before_action :require_login
  
  def show
    if logged_in.admin
      admin
    else
      guide
    end
  end
  
  def admin
    @admin = logged_in.admin
    @seminars = Seminar.current
    
    render "dashboard/admin"
  end

  def guide
    @guide = logged_in.guide
    @nearby_locations = logged_in.guide.location.nearbys(30).where(locatable_type: "Client")
    
    render "dashboard/guide"
  end
end
