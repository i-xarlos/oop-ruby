require "./Dueno"

class Perro

	attr_accessor :nombre , :edad , :color , :categoria , :dueno , :postura
	
	def initialize(nombre , edad , color , categoria ,  dueno , postura)
		@nombre = nombre
		@edad = edad
		@color = color
		@categoria = categoria
		@dueno = dueno
		@postura = postura
	end

	def mostrar_caracteristicas		
	end


	def calificacion
		return postura * 9
	end
	
	
end