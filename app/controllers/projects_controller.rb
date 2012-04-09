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
    @project = Project.new(params[:project])
    flash[:notice] = "Project was succesfully created." if @project.save

    respond_with @project, :location => projects_path
  end

  def update
    @project = Project.find(params[:id])
    flash[:notice] = "Project was successfully updated." if @project.update_attributes(params[:project])

    respond_with @project, :location => projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_with @project
  end


end
