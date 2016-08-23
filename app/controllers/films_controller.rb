class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]

  def index
    @films = Film.all
  end

  def show
    # @film = Film.find_by(title: params[:title])
  end

  def new
    @film = Film.new
  end

  def edit
    # @film = Film.find_by(title: params[:title])
  end

  # def create
  #   @film = Film.new(film_params)
  #   if @film.save
  #     redirect_to film_path
  #   else
  #     render "new"
  #   end
  # end
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        # format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        # format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @film = Film.find_by(title: params[:title])

    # @film.update(film_params)
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        # format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        # format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end


    def destroy
      @film.destroy
      respond_to do |format|
        format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
        format.json { head :no_content }
      end
      @film = Film.find_by(title: params[:title])
    end
  # def update
  #   @film= Film.find_by(title: params[:title])
  #   @film.update(film_params)

  #   redirect_to film_path(@film)
  # end

  # def destroy
  #   @film= Film.find_by(title: params[:title])
  #   @film.destory

  #   redirect_to film_path
  # end

  private

    def set_film
      @film = Film.find(params[:id])
    end

  def film_param
    params.require(:film).permit(:title, :year, :description, :img_url, :favorite)
  end

end
