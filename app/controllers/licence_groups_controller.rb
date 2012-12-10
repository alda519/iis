class LicenceGroupsController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_clerk
    before_filter :have_to_be_admin, :only => [:destroy]

    def index
        @licence_groups = LicenceGroup.all
    end

    def show
        @licence_group = LicenceGroup.find(params[:id])
    end

    def edit
        @licence_group = LicenceGroup.find(params[:id])
        @drivers = Driver.all
    end

    def new
        @licence_group = LicenceGroup.new
        @drivers = Driver.all
    end

    def create
        @licence_group = LicenceGroup.new params[:licence_group]
        @drivers = Driver.all
        if @licence_group.save
            redirect_to licence_groups_path, :notice => "Licence Group created"
        else
            render :action => "new"
        end
    end

    def update
        @licence_group = LicenceGroup.find(params[:id])
        @drivers = Driver.all
        if @licence_group.update_attributes(params[:licence_group])
            redirect_to licence_groups_path, :notice => "Licence Group updated"
        else
            render :edit
        end
    end

    def destroy
        LicenceGroup.find(params[:id]).delete
        redirect_to licence_groups_path, :notice => "Licence Group destroyed"
    end

end
