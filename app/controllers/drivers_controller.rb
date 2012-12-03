class DriversController < ApplicationController

    before_filter :authenticate_user

    def index
        @drivers = Driver.all
    end

    def show
        @driver = Driver.find(params[:id])
    end

    def edit
        @driver = Driver.find(params[:id])
    end

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.new params[:driver]
        if @driver.save
            redirect_to drivers_path, :notice => "Driver created"
        else
            render :action => "new"
        end
    end

    def update
        @driver = Driver.find(params[:id])
        if @driver.update_attributes(params[:driver])
            redirect_to drivers_path, :notice => "Driver upadated"
        else
            render :edit
        end
    end

    def destroy
        Driver.find(params[:id]).delete
        redirect_to drivers_path, :notice => "Driver destroyed"
    end

end
