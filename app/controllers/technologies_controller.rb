class TechnologiesController < ApplicationController
  # GET /technologies
  # GET /technologies.json
  def index
    @technologies = Technology.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @technologies }
    end
  end

end
