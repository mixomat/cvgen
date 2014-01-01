class ProjectsController < ApplicationController
  respond_to :html, :json
  before_filter :signed_in_user

  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    @project = Project.find(params[:id])
    respond_with @project
  end

  def new
    @project = Project.new
    respond_with @project
  end

  def edit
    @project = Project.find(params[:id])
    respond_with @project
  end

  def create
    @project = Project.new(project_params)
    flash[:notice] = 'Project was successfully created.' if @project.save

    respond_with @project, :location => projects_path
  end


  def update
    @project = Project.find(params[:id])
    flash[:notice] = 'Project was successfully updated.' if @project.update_attributes(project_params)

    respond_with @project, :location => projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_with @project
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :customer, :role, :start_date, :end_date)
  end

end


