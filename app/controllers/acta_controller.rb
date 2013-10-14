class ActaController < ApplicationController
  before_action :set_actum, only: [:show, :edit, :update, :destroy]

  # GET /acta
  # GET /acta.json
  def index
    @acta = Actum.all
  end

  # GET /acta/1
  # GET /acta/1.json
  def show
  end

  # GET /acta/new
  def new
    @actum = Actum.new
  end

  # GET /acta/1/edit
  def edit
  end

  # POST /acta
  # POST /acta.json
  def create
    @actum = Actum.new(actum_params)

    respond_to do |format|
      if @actum.save
        format.html { redirect_to @actum, notice: 'Actum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @actum }
      else
        format.html { render action: 'new' }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acta/1
  # PATCH/PUT /acta/1.json
  def update
    respond_to do |format|
      if @actum.update(actum_params)
        format.html { redirect_to @actum, notice: 'Actum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acta/1
  # DELETE /acta/1.json
  def destroy
    @actum.destroy
    respond_to do |format|
      format.html { redirect_to acta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actum
      @actum = Actum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actum_params
      params.require(:actum).permit(:numero_acta, :fecha, :lugar, :desarrollo, :participantes, :cncluciones, :tareas)
    end
end
