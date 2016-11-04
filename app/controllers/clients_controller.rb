class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.order(id: :desc).all
  end

  def show
  end

  def new
    @client = Client.new
  end


  def edit
    # @client = Client.find_by(name: params[:name])
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path, notice: 'Client was successfully created.'
    else
      render "new"
    end
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to clients_url, notice: 'Client was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
    end
    @client = Client.find_by(name: params[:name])
  end

private
  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :img_url, :description)
  end
end
