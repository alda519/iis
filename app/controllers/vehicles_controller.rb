class VehiclesController < ApplicationController

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
        v = Vehicle.new(params[:vehicle])
        v.save
        redirect_to :action => :index
    end

    def update
        @vehicle = Vehicle.find(params[:id])
        if @vehicle.update_attributes(params[:vehicle])
            redirect_to :action => :index
        else
            render :edit
        end
    end

    def destroy
        Vehicle.find(params[:id]).delete
        redirect_to :action => :index
    end

end
