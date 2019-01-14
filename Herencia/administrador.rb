require "./contrato"

class Administrador

	attr_accessor :nombre , :contratos

	def initialize(nombre)
		@nombre = nombre
		@contratos = Array.new
	end

	def registrar(contrato)
		 @contratos.push(contrato)		
	end

	def calcular_suma_sueldos

		suma = 0

		for contrato in contratos
			suma += contrato.calcular_sueldo_neto
		end
		
		return suma
	end


	def obtener_sueldo(dni)

		for contrato in contratos
			if dni == contrato.trabajador.dni
				puts contrato.trabajador.nombre 
				puts contrato.calcular_sueldo_neto
				break
			else
				puts 'no se ha encontrado ningún trabajador'
				break
			end
		end
			
	end

end


t1 = Trabajador.new("9999" , 'Carlos')
t2 = Trabajador.new('8888' , 'Jorge')
contrato1 = Contrato.new('191919' , 100 , 40 , 'Costa' , 'Enero' ,  'Los Olmos' ,  t1 )
contrato2 = Contrato.new('121212' , 200 , 50 , 'Sierra' , 'Marzo' ,  'Amazonas' ,  t2 )

admin = Administrador.new('Carlos Gil')
admin.registrar(contrato1)
admin.registrar(contrato2) 

puts 'Sueldos: ' + admin.calcular_suma_sueldos.to_s
admin.obtener_sueldo('9999')