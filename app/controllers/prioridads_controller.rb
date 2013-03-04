class PrioridadsController < ApplicationController
  # GET /prioridads
  # GET /prioridads.json
  def index
    @prioridads = Prioridad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prioridads }
    end
  end

  # GET /prioridads/1
  # GET /prioridads/1.json
  def show
    @prioridad = Prioridad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prioridad }
    end
  end

  # GET /prioridads/new
  # GET /prioridads/new.json
  def new
    @prioridad = Prioridad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prioridad }
    end
  end

  # GET /prioridads/1/edit
  def edit
    @prioridad = Prioridad.find(params[:id])
  end

  # POST /prioridads
  # POST /prioridads.json
  def create
    @prioridad = Prioridad.new(params[:prioridad])

    respond_to do |format|
      if @prioridad.save
        format.html { redirect_to @prioridad, notice: 'Prioridad was successfully created.' }
        format.json { render json: @prioridad, status: :created, location: @prioridad }
      else
        format.html { render action: "new" }
        format.json { render json: @prioridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prioridads/1
  # PUT /prioridads/1.json
  def update
    @prioridad = Prioridad.find(params[:id])

    respond_to do |format|
      if @prioridad.update_attributes(params[:prioridad])
        format.html { redirect_to @prioridad, notice: 'Prioridad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prioridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prioridads/1
  # DELETE /prioridads/1.json
  def destroy
    @prioridad = Prioridad.find(params[:id])
    @prioridad.destroy

    respond_to do |format|
      format.html { redirect_to prioridads_url }
      format.json { head :no_content }
    end
  end
end
