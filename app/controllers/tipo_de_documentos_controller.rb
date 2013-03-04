class TipoDeDocumentosController < ApplicationController
  # GET /tipo_de_documentos
  # GET /tipo_de_documentos.json
  def index
    @tipo_de_documentos = TipoDeDocumento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_documentos }
    end
  end

  # GET /tipo_de_documentos/1
  # GET /tipo_de_documentos/1.json
  def show
    @tipo_de_documento = TipoDeDocumento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_documento }
    end
  end

  # GET /tipo_de_documentos/new
  # GET /tipo_de_documentos/new.json
  def new
    @tipo_de_documento = TipoDeDocumento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_documento }
    end
  end

  # GET /tipo_de_documentos/1/edit
  def edit
    @tipo_de_documento = TipoDeDocumento.find(params[:id])
  end

  # POST /tipo_de_documentos
  # POST /tipo_de_documentos.json
  def create
    @tipo_de_documento = TipoDeDocumento.new(params[:tipo_de_documento])

    respond_to do |format|
      if @tipo_de_documento.save
        format.html { redirect_to @tipo_de_documento, notice: 'Tipo de documento was successfully created.' }
        format.json { render json: @tipo_de_documento, status: :created, location: @tipo_de_documento }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_documentos/1
  # PUT /tipo_de_documentos/1.json
  def update
    @tipo_de_documento = TipoDeDocumento.find(params[:id])

    respond_to do |format|
      if @tipo_de_documento.update_attributes(params[:tipo_de_documento])
        format.html { redirect_to @tipo_de_documento, notice: 'Tipo de documento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_documentos/1
  # DELETE /tipo_de_documentos/1.json
  def destroy
    @tipo_de_documento = TipoDeDocumento.find(params[:id])
    @tipo_de_documento.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_documentos_url }
      format.json { head :no_content }
    end
  end
end
