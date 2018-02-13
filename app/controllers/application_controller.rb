class ApplicationController < ActionController::Base
<<<<<<< HEAD
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
=======
  before_action :authenticate_tenant!
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  protect_from_forgery with: :exception
  before_action :authenticate_tenant!
  
     ##    milia defines a default max_tenants, invalid_tenant exception handling
     ##    but you can override these if you wish to handle directly
  rescue_from ::Milia::Control::MaxTenantExceeded, :with => :max_tenants
  rescue_from ::Milia::Control::InvalidTenantAccess, :with => :invalid_tenant

end
