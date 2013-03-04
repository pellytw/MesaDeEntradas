class MotivosController < ApplicationController
  # GET /motivos
  # GET /motivos.json
  def index
    @motivos = Motivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @motivos }
    end
  end

  # GET /motivos/1
  # GET /motivos/1.json
  def show
    @motivo = Motivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @motivo }
    end
  end

  # GET /motivos/new
  # GET /motivos/new.json
  def new
    @motivo = Motivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @motivo }
    end
  end

  # GET /motivos/1/edit
  def edit
    @motivo = Motivo.find(params[:id])
  end

  # POST /motivos
  # POST /motivos.json
  def create
    @motivo = Motivo.new(params[:motivo])

    respond_to do |format|
      if @motivo.save
        format.html { redirect_to @motivo, notice: 'Motivo was successfully created.' }
        format.json { render json: @motivo, status: :created, location: @motivo }
      else
        format.html { render action: "new" }
        format.json { render json: @motivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /motivos/1
  # PUT /motivos/1.json
  def update
    @motivo = Motivo.find(params[:id])

    respond_to do |format|
      if @motivo.update_attributes(params[:motivo])
        format.html { redirect_to @motivo, notice: 'Motivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @motivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motivos/1
  # DELETE /motivos/1.json
  def destroy
    @motivo = Motivo.find(params[:id])
    @motivo.destroy

    respond_to do |format|
      format.html { redirect_to motivos_url }
      format.json { head :no_content }
    end
  end
end
