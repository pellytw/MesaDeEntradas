class PasesController < ApplicationController
  # GET /pases
  # GET /pases.json
  def index
    @pases = Pase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pases }
    end
  end

  # GET /pases/1
  # GET /pases/1.json
  def show
    @pase = Pase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pase }
    end
  end

  # GET /pases/new
  # GET /pases/new.json
  def new
    @pase = Pase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pase }
    end
  end

  # GET /pases/1/edit
  def edit
    @pase = Pase.find(params[:id])
  end

  # POST /pases
  # POST /pases.json
  def create
    @pase = Pase.new(params[:pase])

    respond_to do |format|
      if @pase.save
        format.html { redirect_to @pase, notice: 'Pase was successfully created.' }
        format.json { render json: @pase, status: :created, location: @pase }
      else
        format.html { render action: "new" }
        format.json { render json: @pase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pases/1
  # PUT /pases/1.json
  def update
    @pase = Pase.find(params[:id])

    respond_to do |format|
      if @pase.update_attributes(params[:pase])
        format.html { redirect_to @pase, notice: 'Pase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pases/1
  # DELETE /pases/1.json
  def destroy
    @pase = Pase.find(params[:id])
    @pase.destroy

    respond_to do |format|
      format.html { redirect_to pases_url }
      format.json { head :no_content }
    end
  end
  
  def agregar
    if session["pase"] then
      @pase = session["pase"] 
    else
      @pase = Pase.create(:fecha => Time.now, :user_id => current_user, :recibido => false)
    end
    debugger
    if params["idDocumento"] && @pase.id then
      if (@pase.pase_documentos.where("documento_id ="+ params["idDocumento".to_s]).count == 0) then   
        PaseDocumento.create(:documento_id => params["idDocumento"].to_i, :pase_id => @pase.id)
      end
    end  
    session["pase"] = @pase
    redirect_to :back
   end
  
  def quitar
    if session["pase"] then
      @pase = session["pase"]
      debugger
      if params["idDocumento"] && @pase.id then
        if (@pase.pase_documentos.where("documento_id = "+ params["idDocumento".to_s]).count > 0) then  
          @pase.pase_documentos.where("documento_id = "+ params["idDocumento".to_s]).destroy_all
        end
      end  
      session["pase"] = @pase
    end
    redirect_to :back
  end
  
  
  
  
  
end
