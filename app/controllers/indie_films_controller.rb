class IndieFilmsController < ApplicationController
  before_action :set_indie_film, only: [:show, :edit, :update, :destroy]

  def index
    @indie_films = IndieFilm.all
  end

  def show
  end

  def new
    @indie_film = IndieFilm.new
  end

  def edit
  end

  def create
    @indie_film = IndieFilm.new(indie_film_params)

    respond_to do |format|
      if @indie_film.save
        format.html { redirect_to @indie_film, notice: 'Indie film was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @indie_film.update(indie_film_params)
        format.html { redirect_to @indie_film, notice: 'Indie film was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @indie_film.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Indie film was successfully destroyed.' }
    end
  end

  private
    def set_indie_film
      @indie_film = IndieFilm.find(params[:id])
    end

    def indie_film_params
      params.require(:indie_film).permit(:title, :distributor, :year, :description, :img_url, :favorite)
    end
end
