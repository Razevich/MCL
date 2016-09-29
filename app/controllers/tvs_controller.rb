class TvsController < ApplicationController
  before_action :set_tv, only: [:show, :edit, :update, :destroy]


  def index
    @tvs = Tv.all
  end

  def show
  end


  def new
    @tv = Tv.new
  end


  def edit
  end


  def create
    @tv = Tv.new(tv_params)

    respond_to do |format|
      if @tv.save
        format.html { redirect_to @tv, notice: 'Tv was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @tv.update(tv_params)
        format.html { redirect_to @tv, notice: 'Tv was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tv.destroy
    respond_to do |format|
      format.html { redirect_to tvs_url, notice: 'Tv was successfully destroyed.' }
    end
  end

  private
    def set_tv
      @tv = Tv.find(params[:id])
    end

    def tv_params
      params.require(:tv).permit(:year, :title, :description, :img_url, :favorite)
    end
end

# class TvController < ApplicationController

#   def new
#   end

#   def create
#     @tv = Tv.new(tv_params)
#     if @tv.save
#       redirect_to tv_path(@tv)
#     else
#       render "new"
#     end
#   end

#   def index
#     @tv = Tv.all
#   end

#   def show
#     @tv = Tv.find_by(title: paramas[:title])
#   end

#   def edit
#     @tv = Tv.find_by(title: paramas[:title])
#   end

#   def update
#     @tv = Tv.find_by(title: paramas[:title])
#     @tv.update(tv_params)
#   end

#   def destroy
#     @tv = Tv.find_by(title: paramas[:title])
#     @tv.destroy

#     redirect_to tv_path
#   end

#   private

#   def tv_params
#     params.require(:tv).permit(:title, :description, :img_url, :favorite)
#   end
# end
