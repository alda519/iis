class DriversController < ApplicationController

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
        Driver.new(params[:driver]).save
        redirect_to :action => :index
    end

    def update
        @driver = Driver.find(params[:id])
        if @driver.update_attributes(params[:driver])
            redirect_to :action => :index
        else
            render :edit
        end
    end

    def destroy
        Driver.find(params[:id]).delete
        redirect_to :action => :index
    end

end
