# class TvsController < ApplicationController
#   before_action :set_tv, only: [:show, :edit, :update, :destroy]

#   # GET /tvs
#   # GET /tvs.json
#   def index
#     @tvs = Tv.all
#   end

#   # GET /tvs/1
#   # GET /tvs/1.json
#   def show
#   end

#   # GET /tvs/new
#   def new
#     @tv = Tv.new
#   end

#   # GET /tvs/1/edit
#   def edit
#   end

#   # POST /tvs
#   # POST /tvs.json
#   def create
#     @tv = Tv.new(tv_params)

#     respond_to do |format|
#       if @tv.save
#         format.html { redirect_to @tv, notice: 'Tv was successfully created.' }
#         format.json { render :show, status: :created, location: @tv }
#       else
#         format.html { render :new }
#         format.json { render json: @tv.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /tvs/1
#   # PATCH/PUT /tvs/1.json
#   def update
#     respond_to do |format|
#       if @tv.update(tv_params)
#         format.html { redirect_to @tv, notice: 'Tv was successfully updated.' }
#         format.json { render :show, status: :ok, location: @tv }
#       else
#         format.html { render :edit }
#         format.json { render json: @tv.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /tvs/1
#   # DELETE /tvs/1.json
#   def destroy
#     @tv.destroy
#     respond_to do |format|
#       format.html { redirect_to tvs_url, notice: 'Tv was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_tv
#       @tv = Tv.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def tv_params
#       params.require(:tv).permit(:year, :title, :description, :img_url, :favorite)
#     end
# end

# # class TvController < ApplicationController

# #   def new
# #   end

# #   def create
# #     @tv = Tv.new(tv_params)
# #     if @tv.save
# #       redirect_to tv_path(@tv)
# #     else
# #       render "new"
# #     end
# #   end

# #   def index
# #     @tv = Tv.all
# #   end

# #   def show
# #     @tv = Tv.find_by(title: paramas[:title])
# #   end

# #   def edit
# #     @tv = Tv.find_by(title: paramas[:title])
# #   end

# #   def update
# #     @tv = Tv.find_by(title: paramas[:title])
# #     @tv.update(tv_params)
# #   end

# #   def destroy
# #     @tv = Tv.find_by(title: paramas[:title])
# #     @tv.destroy

# #     redirect_to tv_path
# #   end

# #   private

# #   def tv_params
# #     params.require(:tv).permit(:title, :description, :img_url, :favorite)
# #   end
# # end
