class Usuario < ActiveRecord::Base
	has_many :proyecto_usuario 
	has_many :proyectos, :through => :proyecto_usuario
end
