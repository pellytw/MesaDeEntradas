class DocumentosController < ApplicationController
  # GET /documentos
  # GET /documentos.json
 def index
    if params["busqueda"] then
       if params["busqueda"] == "" then
        @documentos = Documento.all
       else
         @documentos = Documento.where(['nombre LIKE ?', "%"+params["busqueda"]+"%"]) 
       end
    else
      @documentos = Documento.all
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documentos }
    end
  end

  # GET /documentos/1
  # GET /documentos/1.json
  def show
    @documento = Documento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @documento }
    end
  end

  # GET /documentos/new
  # GET /documentos/new.json
  def new
    @documento = Documento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @documento }
    end
  end

  # GET /documentos/1/edit
  def edit
    @documento = Documento.find(params[:id])
  end

  # POST /documentos
  # POST /documentos.json
  # def create
    # @documento = Documento.new(params[:documento])
# 
    # respond_to do |format|
      # if @documento.save
        # format.html { redirect_to @documento, notice: 'Documento was successfully created.' }
        # format.json { render json: @documento, status: :created, location: @documento }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @documento.errors, status: :unprocessable_entity }
      # end
    # end
  # end
  
  
  def create
    @documento = Documento.new(params[:documento])

    respond_to do |format|
      if @documento.save
        if params["tipo"] == "oficina" then
          @oficina = Oficina.find(params["oficina"].to_i).id
        else
          @persona = Persona.find(params["persona"].to_i).id
        end  
          
        @lugar = Lugar.create(:documento_id => @documento.id, :fecha_desde => Time.now, :persona_id => @persona, :oficina_id => @oficina, :user_id => current_user.id)
       
        
        format.html { redirect_to @documento, notice: 'Documento was successfully created.' }
        format.json { render json: @documento, status: :created, location: @documento }
      else
        format.html { render action: "new" }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  
  
  

  # PUT /documentos/1
  # PUT /documentos/1.json
  def update
    @documento = Documento.find(params[:id])

    respond_to do |format|
      if @documento.update_attributes(params[:documento])
        format.html { redirect_to @documento, notice: 'Documento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.json
  def destroy
    @documento = Documento.find(params[:id])
    @documento.destroy

    respond_to do |format|
      format.html { redirect_to documentos_url }
      format.json { head :no_content }
    end
  end
end
