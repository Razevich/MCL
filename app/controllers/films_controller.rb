class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]

  def index
    @films = Film.all
  end

  def show
  end

  def new
    @film = Film.new
  end

  def edit
  end

  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to projects_url, notice: 'Film was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    # @film = Film.find_by(title: params[:title])
    # @film.update(film_params)
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Film was successfully destroyed.' }
    end
    # @film = Film.find_by(title: params[:title])
  end

  # def destroy
  #   @film= Film.find_by(title: params[:title])
  #   @film.destory

  #   redirect_to film_path
  # end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :year, :distributor, :description, :img_url, :favorite)
  end

end
