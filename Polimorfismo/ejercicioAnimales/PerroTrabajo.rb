require "./Perro"

class PerroTrabajo < Perro

	attr_accessor :raza , :habilidad

	def initialize( nombre , edad , color , categoria ,  dueno , postura , raza , habilidad)
		super(nombre , edad , color , categoria ,  dueno , postura)
		@raza = raza
		@habilidad = habilidad
	end

	def mostrar_caracteristicas
		return 'Raza: ' + raza + ' Habilidad: ' + habilidad.to_s
	end

	def calificacion
		return super + habilidad
	end
	
	
	
end