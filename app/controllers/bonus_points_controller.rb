class BonusPointsController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_clerk
    before_filter :have_to_be_admin, :only => [:destroy]

    def index
        @bonus_points = BonusPoint.all
    end

    def show
        @bonus_point = BonusPoint.find(params[:id])
    end

    def edit
        @bonus_point = BonusPoint.find(params[:id])
        @drivers = Driver.all
    end

    def new
        @bonus_point = BonusPoint.new
        @drivers = Driver.all
    end

    def create
        @bonus_point = BonusPoint.new params[:bonus_point]
        @drivers = Driver.all
        if @bonus_point.save
            redirect_to bonus_points_path, :notice => "Bonus points created"
        else
            render :action => "new"
        end
    end

    def update
        @bonus_point = BonusPoint.find(params[:id])
        @drivers = Driver.all
        if @bonus_point.update_attributes(params[:bonus_point])
            redirect_to bonus_points_path, :notice => "Bonus points updated"
        else
            render :edit
        end
    end

    def destroy
        BonusPoint.find(params[:id]).delete
        redirect_to bonus_points_path, :notice => "Bonus points deleted"
    end

end
