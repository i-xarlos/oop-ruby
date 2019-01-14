require "./TerrenoConstruido"
require "./TerrenoVacio"
require "./TerrenoVenta"

class Administrador

	attr_accessor :terrenos
	
	def initialize
		@terrenos = Array.new	
	end
	
	def agregar_terreno(terreno)
		terrenos.push(terreno)
	end

	def listar_terrenos

		puts "---------- Lista de Terrenos ------------" 
		for terreno in terrenos	
			puts "-----------------------------------------  \n"		
			puts "Código: #{terreno.cod}"
			puts "Distrito: #{terreno.distrito}"
			puts "Área: #{terreno.area}"
			puts "Precio: #{terreno.calcular_precio}"	
			puts "#{terreno.imprimir_datos} \n"
				
		end

		
	end
	
	def buscar_terreno(codigo)

		puts "\n---------- Busqueda ------------" 
		result = ''

		for terreno in terrenos
			if terreno.cod == codigo
				result =  "\nCódigo: #{terreno.cod} \n"
				result += "Distrito: #{terreno.distrito} \n"
				result += "Área: #{terreno.area} \n"
				result += "Precio: #{terreno.calcular_precio} \n"
				result += "#{terreno.imprimir_datos}"	

				break
			else
				result = "\nNo se encontró el terreno"
			end

		end

		puts result

	end
end

#terreno contrido(cod , area , distrito , precio_x_metro , area_contruida)
#terreno vacio (cod , area , distrito , precio_x_metro , direccion)
#terreno venta (cod , area , distrito , precio_x_metro , telefono , fecha_registro , en_venta)

t1 = TerrenoConstruido.new('001' , 200 , 'Lince' , 500 , 300)
t2 = TerrenoConstruido.new('002' , 500 , 'Jesús María' , 800 , 500)
t3 = TerrenoVacio.new('003' , 250 , 'San Borja' , 500 , 'Calle los Tulipanes 325')
t4 = TerrenoVacio.new('004' , 450 , 'San Felipe' , 800 , 'Calle los Uros 123')
t5 = TerrenoVenta.new('005' , 500 , 'Lince' , 600 , '225568' , '10/12/2015' , 1)
t6 = TerrenoVenta.new('006' , 300 , 'La Molina' , 800 , '353658' , '08/10/2015' , 0)
t7 = TerrenoVenta.new('007' , 300 , 'La Molina' , 800 , '353658' , '08/10/2015' , 1)

adm = Administrador.new

adm.agregar_terreno(t1)
adm.agregar_terreno(t2)
adm.agregar_terreno(t3)
adm.agregar_terreno(t4)
adm.agregar_terreno(t5)
adm.agregar_terreno(t6)
adm.agregar_terreno(t7)

adm.listar_terrenos
adm.buscar_terreno('001')
adm.buscar_terreno('008')
