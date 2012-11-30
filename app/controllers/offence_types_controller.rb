class OffenceTypesController < ApplicationController

    before_filter :authenticate_user

    def index
        @offence_types = OffenceType.all
    end

    def show
        @offence_type = OffenceType.find(params[:id])
    end

    def new
        @offence_type = OffenceType.new
    end

    def edit
        @offence_type = OffenceType.find(params[:id])
    end

    def create
        @offence_type = OffenceType.new(params[:offence_type])
        if @offence_type.save
            redirect_to @offence_type, notice: 'Offence type was successfully created.'
        else
            render action: "new"
        end
    end

    def update
        @offence_type = OffenceType.find(params[:id])
        if @offence_type.update_attributes(params[:offence_type])
            redirect_to @offence_type, notice: 'Offence type was successfully updated.'
        else
            render action: "edit"
        end
    end

    def destroy
        @offence_type = OffenceType.find(params[:id])
        @offence_type.destroy
        redirect_to offence_types_url
    end

end
