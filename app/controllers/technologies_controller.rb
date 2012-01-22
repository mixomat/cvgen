class TechnologiesController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Technology.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @projects }
    end
  end

end
