class Api::V1::CarsController < ApplicationController
    def index
        @cars = Car.all
        render json: @cars
    end
    def show
        @car = Car.find(params[:id])
        render json: @car
    end
    def create
        @car = Car.new(car_params)
        if @car.save
            render json: @car
        else
            render json: {error: 'Error creating car'}
        end
    end
    
    def destroy
        @car = Car.find(params[:id])
        @car.destroy
        :no_content
    end

    private

    def car_params
        params.require(:car).permit(:name, :year, :color, :plate_no, :price, :photo, :user_id)
    end
end
