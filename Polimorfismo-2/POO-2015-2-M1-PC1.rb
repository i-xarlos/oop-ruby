

class Container

	attr_accessor :peso , :tamano , :nombre_propietario , :factor

	def initialize(peso , tamano , nombre_propietario)
		@peso = peso
		@tamano =  tamano
		@nombre_propietario = nombre_propietario
	end

	def calcular_factor(tamano)

		if tamano < 20
			factor = 1.5
		elsif tamano >= 20 && tamano <= 40
			factor = 1.8
		elsif tamano > 40
			factor = 2.0
		end

		return factor
	end

	def calcular_costo_flete

		(calcular_factor(tamano) * peso ) / 100
		
	end
	
	
end

class Administrador

	attr_accessor :containers

	def initialize

		@containers = Array.new
		
	end

	def agregar_container(container)

		containers.push(container)
		
	end

	def calcular_monto_total
		total = 0
		for container in containers
			total += container.calcular_costo_flete
		end
		return total
	end
	
	def imprimir_containers
		for container in containers
			puts container.nombre_propietario + ' : '+ container.calcular_costo_flete.to_s
		end
	end

	def buscar_mayor

		max = 0
		nombre = ''

		for container in containers
			if(container.calcular_costo_flete>max)
				nombre = container.nombre_propietario
				max = container.calcular_costo_flete
				
			end
		end		

		return 'Nombre: ' + nombre + ' Monto máximo: ' + max.to_s
	end
	
end


cont1 = Container.new(4000,41,'Carlos')
cont2 = Container.new(3000,20,'Jorge')
cont3 = Container.new(5000,10,'Andres')

adm = Administrador.new
adm.agregar_container(cont1)
adm.agregar_container(cont2)
adm.agregar_container(cont3)

adm.imprimir_containers

puts adm.buscar_mayor
puts 'Monto total: ' + adm.calcular_monto_total.to_s

