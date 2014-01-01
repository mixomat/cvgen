module Api
  class ProjectsController < ApplicationController

    def index
      @projects = Project.all
      # TODO use jbuilder template for fine grained json output
      render json: @projects
    end

  end
end
