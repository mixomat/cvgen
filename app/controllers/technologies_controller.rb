class TechnologiesController < ApplicationController
  respond_to :html, :json, :js
  before_filter :signed_in_user

  def index
    @technology = Technology.new
    @technologies = Technology.all

    respond_with @technologies
  end

  def create
    @technology = Technology.new(technology_params)
    flash[:notice] = 'Technology was successfully created.' if @technology.save

    respond_with @technology, :location => technologies_url
  end

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy

    respond_with @technology
  end

  def names
    @technologies = Technology.select(:name).map { |t| t.name }

    respond_with @technologies
  end

  private

  def technology_params
    params.require(:technology).permit(:name)
  end

end
