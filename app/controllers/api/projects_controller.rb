module Api
  class ProjectsController < ApplicationController
    before_filter :allow_cross_domain_access

    def index
      if params[:highlight]
        @projects = Project.where(highlight: params[:highlight] == 'true')
      else
        @projects = Project.all
      end

      # TODO use jbuilder template for fine grained json output
      render json: @projects
    end

    private
    def allow_cross_domain_access
      response.headers['Access-Control-Allow-Origin'] = '*'
      response.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      response.headers['Access-Control-Request-Method'] = '*'
      response.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end

  end
end
