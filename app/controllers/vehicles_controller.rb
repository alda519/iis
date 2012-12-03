class VehiclesController < ApplicationController

    before_filter :authenticate_user

    def index
        @vehicles = Vehicle.all(:order => :year)
    end

    def show
        @vehicle = Vehicle.find(params[:id])
    end

    def edit
        @vehicle = Vehicle.find(params[:id])
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.new(params[:vehicle])
        if @vehicle.save
            redirect_to vehicles_path, :notice => "Vehicle created"
        else
            render :action => 'new'
        end
    end

    def update
        @vehicle = Vehicle.find(params[:id])
        if @vehicle.update_attributes(params[:vehicle])
            redirect_to vehicles_path, :notice => "Vehicle updated"
        else
            render :edit
        end
    end

    def destroy
        Vehicle.find(params[:id]).delete
        redirect_to :action => :index
    end

end
