class OffencesController < ApplicationController

    before_filter :authenticate_user

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
            redirect_to :action => :index, :notice => "Offence created."
        else
            render :action => "new"
        end
    end

    def update
        @offence = Offence.find(params[:id])
        @offence_types = OffenceType.all
        @drivers = Driver.all
        if @offence.update_attributes(params[:offence])
            redirect_to :action => :index
        else
            render :edit
        end
    end

    def destroy
        Offence.find(params[:id]).delete
        redirect_to :action => :index
    end

end
