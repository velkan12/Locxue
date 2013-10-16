class HomepageController < ApplicationController
  def index
    
  	@titulo = Publicacion.last.titulo_publicacion
    @contenido = Publicacion.last.descripcion_publicacion
    @bautor =Publicacion.last.codigo_usuario
    @autor = Usuario.find(@bautor).nombre
     @publicacions = Publicacion.all
 
  end
  def actas
	
  end

  def proyectos
  end

  def usuarios
  end
end
