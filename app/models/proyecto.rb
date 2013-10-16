class Proyecto < ActiveRecord::Base
	has_many :proyecto_usuario
	has_many :usuarios, :through => :proyecto_usuario
end
