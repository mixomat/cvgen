class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  protected
  def signed_in_user
    redirect_to login_path unless signed_in?
  end
end
