class OrganismosController < ApplicationController
  # GET /organismos
  # GET /organismos.json
  def index
    @organismos = Organismo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organismos }
    end
  end

  # GET /organismos/1
  # GET /organismos/1.json
  def show
    @organismo = Organismo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organismo }
    end
  end

  # GET /organismos/new
  # GET /organismos/new.json
  def new
    @organismo = Organismo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organismo }
    end
  end

  # GET /organismos/1/edit
  def edit
    @organismo = Organismo.find(params[:id])
  end

  # POST /organismos
  # POST /organismos.json
  def create
    @organismo = Organismo.new(params[:organismo])

    respond_to do |format|
      if @organismo.save
        format.html { redirect_to @organismo, notice: 'Organismo was successfully created.' }
        format.json { render json: @organismo, status: :created, location: @organismo }
      else
        format.html { render action: "new" }
        format.json { render json: @organismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organismos/1
  # PUT /organismos/1.json
  def update
    @organismo = Organismo.find(params[:id])

    respond_to do |format|
      if @organismo.update_attributes(params[:organismo])
        format.html { redirect_to @organismo, notice: 'Organismo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organismos/1
  # DELETE /organismos/1.json
  def destroy
    @organismo = Organismo.find(params[:id])
    @organismo.destroy

    respond_to do |format|
      format.html { redirect_to organismos_url }
      format.json { head :no_content }
    end
  end
end
