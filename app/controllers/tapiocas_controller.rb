class TapiocasController < ApplicationController
  before_action :set_tapioca, only: [:show, :edit, :update, :destroy]

  # GET /tapiocas
  # GET /tapiocas.json
  def index
    @tapiocas = Tapioca.all
    @hash = Gmaps4rails.build_markers(@tapiocas) do |tapioca, marker|
      marker.lat tapioca.latitude
      marker.lng tapioca.longitude
    end
  end

  # GET /tapiocas/1
  # GET /tapiocas/1.json
  def show
  end

  # GET /tapiocas/new
  def new
    @tapioca = Tapioca.new
  end

  # GET /tapiocas/1/edit
  def edit
  end

  # POST /tapiocas
  # POST /tapiocas.json
  def create
    @tapioca = Tapioca.new(tapioca_params)

    respond_to do |format|
      if @tapioca.save
        format.html { redirect_to @tapioca, notice: 'Tapioca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tapioca }
      else
        format.html { render action: 'new' }
        format.json { render json: @tapioca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tapiocas/1
  # PATCH/PUT /tapiocas/1.json
  def update
    respond_to do |format|
      if @tapioca.update(tapioca_params)
        format.html { redirect_to @tapioca, notice: 'Tapioca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tapioca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tapiocas/1
  # DELETE /tapiocas/1.json
  def destroy
    @tapioca.destroy
    respond_to do |format|
      format.html { redirect_to tapiocas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tapioca
      @tapioca = Tapioca.find(params[:id])
      @comment = @tapioca.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tapioca_params
      params.require(:tapioca).permit(:name, :description, :picture)
    end
  end
