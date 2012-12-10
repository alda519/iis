class RegistrationPlatesController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_clerk
    before_filter :have_to_be_admin, :only => [:destroy]

    def index
        @plates = RegistrationPlate.all
    end

    def show
        @plate = RegistrationPlate.find(params[:id])
    end

    def edit
        @plate = RegistrationPlate.find(params[:id])
        @drivers = Driver.all
        @vehicles = Vehicle.all
    end

    def new
        @plate = RegistrationPlate.new
        @drivers = Driver.all
        @vehicles = Vehicle.all
    end

    def create
        @plate = RegistrationPlate.new(params[:registration_plate])
        @drivers = Driver.all
        @vehicles = Vehicle.all
        if @plate.save
            redirect_to registration_plates_path, :notice => "Registration Plate created"
        else
            render :action => :new
        end
    end

    def update
        @plate = RegistrationPlate.find(params[:id])
        if @plate.update_attributes(params[:registration_plate])
            redirect_to registration_plates_path, :notice => "Registration Plate updated"
        else
            render :edit
        end
    end

    def destroy
        RegistrationPlate.find(params[:id]).delete
        redirect_to registration_plates_path, :notice => "Registration Plate destroyed"
    end

end
