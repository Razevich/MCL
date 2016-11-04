class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    # @projects = Project.all
    # @user.files.order(id: :desc)
    @films = Film.order(id: :desc).all
    @tvs = Tv.order(id: :desc).all
    @marketings = Marketing.order(id: :desc).all
    @indie_films = IndieFilm.order(id: :desc).all
  end

  def show
    # @project = Project.find_by(title: params[:title])
  end

  def new
    @project = Project.new
  end

  def edit
    # @project = Project.find_by(title: params[:title])
  end

  # def create
  #   @project = Project.new(project_params)
  #   if @project.save
  #     redirect_to project_path
  #   else
  #     render "new"
  #   end
  # end
  def create
    @project = Project.new(project_param)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'New project created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project updated.' }
      else
        format.html { render :edit }
      end
    end
  end


    def destroy
      @project.destroy
      respond_to do |format|
        format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
        format.json { head :no_content }
      end
      @project = Project.find_by(title: params[:title])
    end
  # def update
  #   @project= Project.find_by(title: params[:title])
  #   @project.update(project_params)

  #   redirect_to project_path(@project)
  # end

  # def destroy
  #   @project= Project.find_by(title: params[:title])
  #   @project.destory

  #   redirect_to project_path
  # end

  private

    def set_project
      @project = Project.find(params[:id])
    end

  def project_param
    params.require(:project).permit(:title, :year, :description, :img_url, :favorite)
  end

end
