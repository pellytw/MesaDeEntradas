class TipoDeDocumentoAgentesController < ApplicationController
  # GET /tipo_de_documento_agentes
  # GET /tipo_de_documento_agentes.json
  def index
    @tipo_de_documento_agentes = TipoDeDocumentoAgente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_documento_agentes }
    end
  end

  # GET /tipo_de_documento_agentes/1
  # GET /tipo_de_documento_agentes/1.json
  def show
    @tipo_de_documento_agente = TipoDeDocumentoAgente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_documento_agente }
    end
  end

  # GET /tipo_de_documento_agentes/new
  # GET /tipo_de_documento_agentes/new.json
  def new
    @tipo_de_documento_agente = TipoDeDocumentoAgente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_documento_agente }
    end
  end

  # GET /tipo_de_documento_agentes/1/edit
  def edit
    @tipo_de_documento_agente = TipoDeDocumentoAgente.find(params[:id])
  end

  # POST /tipo_de_documento_agentes
  # POST /tipo_de_documento_agentes.json
  def create
    @tipo_de_documento_agente = TipoDeDocumentoAgente.new(params[:tipo_de_documento_agente])

    respond_to do |format|
      if @tipo_de_documento_agente.save
        format.html { redirect_to @tipo_de_documento_agente, notice: 'Tipo de documento agente was successfully created.' }
        format.json { render json: @tipo_de_documento_agente, status: :created, location: @tipo_de_documento_agente }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_documento_agente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_documento_agentes/1
  # PUT /tipo_de_documento_agentes/1.json
  def update
    @tipo_de_documento_agente = TipoDeDocumentoAgente.find(params[:id])

    respond_to do |format|
      if @tipo_de_documento_agente.update_attributes(params[:tipo_de_documento_agente])
        format.html { redirect_to @tipo_de_documento_agente, notice: 'Tipo de documento agente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_documento_agente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_documento_agentes/1
  # DELETE /tipo_de_documento_agentes/1.json
  def destroy
    @tipo_de_documento_agente = TipoDeDocumentoAgente.find(params[:id])
    @tipo_de_documento_agente.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_documento_agentes_url }
      format.json { head :no_content }
    end
  end
end
