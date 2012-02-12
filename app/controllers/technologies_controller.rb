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

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy

    respond_with @technology
  end

  def names
    @technologies = Technology.select(:name).map { |t| t.name}

    respond_with @technologies
  end
end
