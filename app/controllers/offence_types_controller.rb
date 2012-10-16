class OffenceTypesController < ApplicationController
  # GET /offence_types
  # GET /offence_types.json
  def index
    @offence_types = OffenceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offence_types }
    end
  end

  # GET /offence_types/1
  # GET /offence_types/1.json
  def show
    @offence_type = OffenceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offence_type }
    end
  end

  # GET /offence_types/new
  # GET /offence_types/new.json
  def new
    @offence_type = OffenceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offence_type }
    end
  end

  # GET /offence_types/1/edit
  def edit
    @offence_type = OffenceType.find(params[:id])
  end

  # POST /offence_types
  # POST /offence_types.json
  def create
    @offence_type = OffenceType.new(params[:offence_type])

    respond_to do |format|
      if @offence_type.save
        format.html { redirect_to @offence_type, notice: 'Offence type was successfully created.' }
        format.json { render json: @offence_type, status: :created, location: @offence_type }
      else
        format.html { render action: "new" }
        format.json { render json: @offence_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offence_types/1
  # PUT /offence_types/1.json
  def update
    @offence_type = OffenceType.find(params[:id])

    respond_to do |format|
      if @offence_type.update_attributes(params[:offence_type])
        format.html { redirect_to @offence_type, notice: 'Offence type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offence_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offence_types/1
  # DELETE /offence_types/1.json
  def destroy
    @offence_type = OffenceType.find(params[:id])
    @offence_type.destroy

    respond_to do |format|
      format.html { redirect_to offence_types_url }
      format.json { head :no_content }
    end
  end
end
