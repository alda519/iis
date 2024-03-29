class OffencesController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_policeman, :only => [:new, :create]
    before_filter :have_to_be_judge, :only => [:edit, :update, :destroy]

    def index
        @offences = Offence.all
    end

    def show
        @offence = Offence.find(params[:id])
    end

    def edit
        @offence = Offence.find(params[:id])
        @offence_types = OffenceType.all
        @drivers = Driver.all
    end

    def new
        @offence = Offence.new
        @offence_types = OffenceType.all
        @drivers = Driver.all
    end

    def create
        @offence = Offence.new params[:offence]
        @offence_types = OffenceType.all
        @drivers = Driver.all
        if @offence.save
            redirect_to offences_path, :notice => "Offence created"
        else
            render :action => "new"
        end
    end

    def update
        @offence = Offence.find(params[:id])
        @offence_types = OffenceType.all
        @drivers = Driver.all
        if @offence.update_attributes(params[:offence])
            redirect_to offences_path, :notice => "Offence updated"
        else
            render :edit
        end
    end

    def destroy
        Offence.find(params[:id]).delete
        redirect_to offences_path, :notice => "Offence deleted"
    end

end
