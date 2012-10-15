class RegistrationPlatesController < ApplicationController

    def index
        @plates = RegistrationPlate.all
    end

    def show
        @plate = RegistrationPlate.find(params[:id])
    end

    def edit
        @plate = RegistrationPlate.find(params[:id])
    end

    def new
        @plate = RegistrationPlate.new
    end

    def create
        RegistrationPlate.new(params[:registration_plate]).save
        redirect_to :action => :index
    end

    def update
        @plate = RegistrationPlate.find(params[:id])
        if @plate.update_attributes(params[:registration_plate])
            redirect_to :action => :index
        else
            render :edit
        end
    end

    def destroy
        RegistrationPlate.find(params[:id]).delete
    end

end
