class TheftsController < ApplicationController

    before_filter :authenticate_user

    def index
        @thefts = Theft.all
    end

    def show
        @theft = Theft.find(params[:id])
    end

    def edit
        @theft = Theft.find(params[:id])
        @vehicles = Vehicle.all
    end

    def new
        @theft = Theft.new
        @vehicles = Vehicle.all
    end

    def create
        @theft = Theft.new params[:theft]
        @vehicles = Vehicle.all
        if @theft.save
            redirect_to thefts_path, :notice => "Theft created"
        else
            render :action => "new"
        end
    end

    def update
        @theft = Theft.find(params[:id])
        @vehicles = Vehicle.all
        if @theft.update_attributes(params[:theft])
            redirect_to thefts_path, :notice => "Theft updated"
        else
            render :edit
        end
    end

    def destroy
        Theft.find(params[:id]).delete
        redirect_to thefts_path, :notice => "Theft destroyed"
    end

end
