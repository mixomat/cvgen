class TechnologiesController < ApplicationController
  respond_to :html, :json, :js

  def index
    @technology = Technology.new
    @technologies = Technology.all

    respond_with @technologies
  end

  def create
    @technology = Technology.new(params[:technology])
    flash[:notice] = 'Technology was successfully created.' if @technology.save

    respond_with @technology, :location => technologies_url
  end

end
