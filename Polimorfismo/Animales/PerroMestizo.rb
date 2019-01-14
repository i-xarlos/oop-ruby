require "./Perro"

class PerroMestizo < Perro

	attr_accessor :aceptacion , :disciplina

	def initialize(nombre , edad , color , categoria ,  dueno , postura , aceptacion  , disciplina)
		super(nombre , edad , color , categoria ,  dueno , postura)
		@aceptacion  = aceptacion 
		@disciplina = disciplina
	end

	def mostrar_caracteristicas
		return 'Aceptación: ' + aceptacion.to_s + ' Disciplina: ' + disciplina.to_s
	end
	
	def calificacion
		return super + ( aceptacion + disciplina ) / 2
	end
	
	
end