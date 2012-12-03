class LicenceRestrictsController < ApplicationController

    before_filter :authenticate_user

    def index
        @licence_restricts = LicenceRestrict.all
    end

    def show
        @licence_restrict = LicenceRestrict.find(params[:id])
    end

    def edit
        @licence_restrict = LicenceRestrict.find(params[:id])
        @drivers = Driver.all
    end

    def new
        @licence_restrict = LicenceRestrict.new
        @drivers = Driver.all
    end

    def create
        @licence_restrict = LicenceRestrict.new params[:licence_restrict]
        @drivers = Driver.all
        if @licence_restrict.save
            redirect_to licence_restricts_path, :notice => "Licence Restriction created"
        else
            render :action => "new"
        end
    end

    def update
        @licence_restrict = LicenceRestrict.find(params[:id])
        @drivers = Driver.all
        if @licence_restrict.update_attributes(params[:licence_restrict])
            redirect_to licence_restricts_path, :notice => "Licence Restriction updated"
        else
            render :edit
        end
    end

    def destroy
        LicenceRestrict.find(params[:id]).delete
        redirect_to licence_restricts_path, :notice => "Licence Restriction destroyed"
    end

end