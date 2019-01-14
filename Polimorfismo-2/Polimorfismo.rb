class Persona

	attr_accessor :name , :last_name

	def initialize(name, last_name)
		@name = name
		@last_name =  last_name
	end
	
	def imprimir_nombre
		'Nombre: ' + name + ' Apellido: ' + last_name
	end
	
end

class Profesor < Persona

	attr_accessor :name , :last_name , :edad

	def initialize(name, last_name , edad)
		super(name, last_name)
		@edad = edad
	end
	
	def imprimir_nombre
		super + ' Edad: ' + edad.to_s
	end
end

class Alumno < Persona

	attr_accessor :name , :last_name , :grado , :colegio
	
	def initialize(name, last_name , grado , colegio)
		super(name, last_name)
		@grado = grado
		@last_name = last_name
		@colegio = colegio
	end
	
	def imprimir_nombre
		super + ' Grado: ' + grado.to_s + ' Colegio: ' + colegio
	end
end

p1 = Profesor.new('Carlos', 'Gil', 20)
p2 = Profesor.new('Jorge', 'Gil', 25)
p3 = Alumno.new('Feliciano', 'Gil', 3 , 'La Salle')


profesores = Array.new
profesores.push(p1)
profesores.push(p2)
profesores.push(p3)

#for profesor in profesores
#	puts profesor.imprimir_nombre
#end 

profesores.each do |profesor|
	puts profesor.imprimir_nombre
end