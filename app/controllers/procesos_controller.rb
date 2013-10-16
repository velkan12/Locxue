class ProcesosController < ApplicationController
  before_action :set_proceso, only: [:show, :edit, :update, :destroy]

  # GET /procesos
  # GET /procesos.json
  def index
    @procesos = Proceso.all
  end

  # GET /procesos/1
  # GET /procesos/1.json
  def show
  end

  # GET /procesos/new
  def new
    @proceso = Proceso.new
  end

  # GET /procesos/1/edit
  def edit
  end

  # POST /procesos
  # POST /procesos.json
  def create
    @proceso = Proceso.new(proceso_params)

    respond_to do |format|
      if @proceso.save
        format.html { redirect_to @proceso, notice: 'Proceso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proceso }
      else
        format.html { render action: 'new' }
        format.json { render json: @proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procesos/1
  # PATCH/PUT /procesos/1.json
  def update
    respond_to do |format|
      if @proceso.update(proceso_params)
        format.html { redirect_to @proceso, notice: 'Proceso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procesos/1
  # DELETE /procesos/1.json
  def destroy
    @proceso.destroy
    respond_to do |format|
      format.html { redirect_to procesos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceso
      @proceso = Proceso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proceso_params
      params.require(:proceso).permit(:nombre_proceso)
    end
end
