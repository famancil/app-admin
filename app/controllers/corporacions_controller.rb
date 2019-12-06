class CorporacionsController < ApplicationController
  before_action :set_corporacion, only: [:show, :edit, :update, :destroy]

  # GET /corporacions
  # GET /corporacions.json
  def index
    @corporacions = Corporacion.all
  end

  # GET /corporacions/1
  # GET /corporacions/1.json
  def show
  end

  # GET /corporacions/new
  def new
    @corporacion = Corporacion.new
  end

  # GET /corporacions/1/edit
  def edit
  end

  # POST /corporacions
  # POST /corporacions.json
  def create
    @corporacion = Corporacion.new(corporacion_params)

    respond_to do |format|
      if @corporacion.save
        format.html { redirect_to corporacions_url, notice: 'Corporacion was successfully created.' }
        format.json { render :show, status: :created, location: @corporacion }
      else
        format.html { render :new }
        format.json { render json: @corporacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporacions/1
  # PATCH/PUT /corporacions/1.json
  def update
    respond_to do |format|
      if @corporacion.update(corporacion_params)
        format.html { redirect_to corporacions_url, notice: 'Corporacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporacion }
      else
        format.html { render :edit }
        format.json { render json: @corporacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporacions/1
  # DELETE /corporacions/1.json
  def destroy
    @corporacion.destroy
    respond_to do |format|
      format.html { redirect_to corporacions_url, notice: 'Corporacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporacion
      @corporacion = Corporacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporacion_params
      params.require(:corporacion).permit(:nombre, :rut, :contraseña, :sucursal, :filas)
    end
end
