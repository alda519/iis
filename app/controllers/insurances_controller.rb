class InsurancesController < ApplicationController

    before_filter :authenticate_user

    def index
        @insurances = Insurance.all
    end

    def show
        @insurance = Insurance.find(params[:id])
    end

    def edit
        @insurance = Insurance.find(params[:id])
        @vehicles = Vehicle.all
    end

    def new
        @insurance = Insurance.new
        @vehicles = Vehicle.all
    end

    def create
        @insurance = Insurance.new params[:insurance]
        @vehicles = Vehicle.all
        if @insurance.save
            redirect_to insurances_path, :notice => "Insurance created"
        else
            render :action => "new"
        end
    end

    def update
        @insurance = Insurance.find(params[:id])
        @vehicles = Vehicle.all
        if @insurance.update_attributes(params[:insurance])
            redirect_to insurances_path, :notice => "Insurance updated"
        else
            render :edit
        end
    end

    def destroy
        Insurance.find(params[:id]).delete
        redirect_to insurances_path, :notice => "Insurance destroyed"
    end

end
