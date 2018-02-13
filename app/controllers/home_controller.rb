class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user
      if session[:tenant_id]
        Tenant.set_current_tenant session[:tenant_id]
      else
        Tenant.set_current_tenant current_user.tenants.first
      end
<<<<<<< HEAD
      
      @tenant = Tenant.current_tenant
      @projects = Project.by_user_plan_and_tenant(@tenant.id, current_user)
=======

      @tenant = Tenant.current_tenant
      @projects = Project.by_plan_and_tenant(@tenant.id)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
      params[:tenant_id] = @tenant.id
    end
  end
end
