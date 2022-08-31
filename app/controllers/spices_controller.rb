class SpicesController < ApplicationController

    def index 
        render json: Spice.all, status: :ok
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created

    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice, status: :ok
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
    end


    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)

    end



    
end
