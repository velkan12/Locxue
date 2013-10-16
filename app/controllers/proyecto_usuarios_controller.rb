class ProyectoUsuariosController < ApplicationController
  before_action :set_proyecto_usuario, only: [:show, :edit, :update, :destroy]

  # GET /proyecto_usuarios
  # GET /proyecto_usuarios.json
  def index
    @proyecto_usuarios = ProyectoUsuario.all
  end

  # GET /proyecto_usuarios/1
  # GET /proyecto_usuarios/1.json
  def show
  end

  # GET /proyecto_usuarios/new
  def new
    @proyecto_usuario = ProyectoUsuario.new
  end

  # GET /proyecto_usuarios/1/edit
  def edit
  end

  # POST /proyecto_usuarios
  # POST /proyecto_usuarios.json
  def create
    @proyecto_usuario = ProyectoUsuario.new(proyecto_usuario_params)

    respond_to do |format|
      if @proyecto_usuario.save
        format.html { redirect_to @proyecto_usuario, notice: 'Proyecto usuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proyecto_usuario }
      else
        format.html { render action: 'new' }
        format.json { render json: @proyecto_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyecto_usuarios/1
  # PATCH/PUT /proyecto_usuarios/1.json
  def update
    respond_to do |format|
      if @proyecto_usuario.update(proyecto_usuario_params)
        format.html { redirect_to @proyecto_usuario, notice: 'Proyecto usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proyecto_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyecto_usuarios/1
  # DELETE /proyecto_usuarios/1.json
  def destroy
    @proyecto_usuario.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto_usuario
      @proyecto_usuario = ProyectoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_usuario_params
      params.require(:proyecto_usuario).permit(:usuario_id, :proyecto_id)
    end
end
