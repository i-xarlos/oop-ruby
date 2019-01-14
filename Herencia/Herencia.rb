class Persona

	attr_accessor :nombre , :dni

	def initialize(nombre , dni)
		@nombre = nombre
		@dni = dni
	end
	
	
end

class ProfesorTParcial < Persona

	attr_accessor :horas , :tarifa_hora

	def initialize(nombre , dni , horas , tarifa_hora)
		super(nombre, dni)
		@horas = horas
		@tarifa_hora = tarifa_hora
	end
	
	def calcular_sueldo

		horas * tarifa_hora
		
	end
	
end

class ProfesorTCompleto < Persona

    attr_accessor :sueldo_basico , :afp

	def initialize(nombre , dni , sueldo_basico , afp)

		super(nombre, dni)
		@sueldo_basico = sueldo_basico
		@afp = afp
		
	end

	def calcular_sueldo

		sueldo_basico - afp
		
	end
	
	
end



profTCompleto =  ProfesorTCompleto.new('Carlos Gil' , '9999999' , 1000 , 300)
profTParcial = ProfesorTParcial.new('Carlos Boad', '88888' , 29 , 40)

puts 'Profesor tiempo parcial: ' + profTParcial.calcular_sueldo.to_s
puts 'Profesor tiempo completo: ' + profTCompleto.calcular_sueldo.to_s
