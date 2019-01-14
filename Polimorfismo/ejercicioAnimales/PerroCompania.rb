require "./Perro"

class PerroCompania < Perro
	
	attr_accessor :raza , :pelaje

	def initialize(nombre , edad , color , categoria ,  dueno , postura , raza , pelaje)
		super(nombre , edad , color , categoria ,  dueno , postura)
		@raza = raza
		@pelaje = pelaje
		
	end

	def mostrar_caracteristicas
		return 'Raza: ' + raza + ' Pelaje: ' + pelaje.to_s
	end

	def calificacion
		return super + pelaje
	end
	
	
	
end