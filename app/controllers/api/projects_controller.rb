module Api
  class ProjectsController < ApplicationController

    def index
      if params[:highlight]
        @projects = Project.where(highlight: (params[:highlight] == 'true'))
      else
        @projects = Project.all
      end
    end


  end
end
