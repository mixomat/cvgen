class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :allow_cross_domain_access

  protected
  def signed_in_user
    redirect_to login_path unless signed_in?
  end

  private
  def allow_cross_domain_access
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    response.headers['Access-Control-Request-Method'] = '*'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
