class DriversController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_clerk, :only => [:new, :edit, :update, :create]
    before_filter :have_to_be_admin, :only => [:destroy]

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
        redirect_to drivers_path, :notice => "Driver deleted"
    end

    def show_offences
        @driver = Driver.find(params[:id])
        @offences = @driver.offences
        @drivers = Driver.all
        render :template => "offences/index"
    end

end
