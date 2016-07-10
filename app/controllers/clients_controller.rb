class ClientsController < ApplicationController

    def index
      @clients = Clinet.all
    end


    def new

    end

    def create
      @client = Client.new(client_params)
      if @client.save
        redirect_to client_path
      else
        render "new"
      end
    end

    def edit
      @client = Client.find_by(name: params[:name])
    end

    def update
      @client = Client.find_by(name: params[:name])
      @client.upgrade(client_params)

      redirect_to client_path
    end

    def destroy
      @client = Client.find_by(name: params[:name])
      @client.destroy

      redirect_to client_path
    end

    private

    def client_params
      params.require(:client).permit(:name, :img_url, :description)
    end
end
