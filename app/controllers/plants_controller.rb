class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find(params[:id])
    end

    def create
        render json: Plant.create(name: params[:name], image: params[:image], price: params[:price]), :status => 201
      
    end
end
