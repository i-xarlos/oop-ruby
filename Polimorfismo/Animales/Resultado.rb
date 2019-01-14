require "./PerroCompania"
require "./PerroMestizo"
require "./PerroTrabajo"
require "./Dueno"


class Resultado

	attr_accessor :perros , :puntaje_total

	def initialize
		@perros = Array.new
	end

	def agregar_perros(perro)
		perros.push(perro)
	end
	

	def imprimir_resultados

		total = 0

		for perro in perros
			puts '----------------------------------'
			puts 'Nombre del Perro: ' + perro.nombre
			puts 'Edad: ' + perro.edad.to_s
			puts 'Color: ' + perro.color		
			puts 'Categoría: ' + perro.categoria
			puts 'Postura: ' + perro.postura.to_s
			puts 'Dueño: ' + perro.dueno.nombre + ' ' + perro.dueno.apellido
			puts perro.mostrar_caracteristicas
			puts 'Calificación: ' + perro.calificacion.to_s

			total += perro.calificacion
		end
		puts '========================='
		puts 'Total: ' + total.to_s 
	end


	def imprimir_ganador

		max = 0
		nombre = ''
		dueno = ''

		for perro in perros
			if perro.calificacion > max
				max = perro.calificacion
				nombre = perro.nombre
				dueno =  perro.dueno.nombre + ' ' + perro.dueno.apellido
			end
		end

		puts '=============== ================ =============== =========='
		puts 'El ganador del torneo es: ' + nombre + ' Calificación: ' + max.to_s 
		puts 'Nombre Dueño: ' + dueno
		
	end

	def imprimir_ganador_categoría(cate)
		
		max = 0
		nombre = ''
		dueno = ''
		categoria = ''

		for perro in perros
			if perro.categoria == cate

				if perro.calificacion > max

					categoria = perro.categoria
					max = perro.calificacion
					nombre = perro.nombre
					dueno =  perro.dueno.nombre + ' ' + perro.dueno.apellido

				end				
				
			end
		end

		puts '=============== ================ =============== =========='
		puts 'El ganador de la categoria "' + categoria + '": ' + ' Nombre '+ nombre + ' Calificación: ' + max.to_s 
		puts 'Nombre Dueño: ' + dueno
	end

	
end

d1 = Dueno.new('Carlos','Gil')
d2 = Dueno.new('Pedro','Fernandez')
d3 = Dueno.new('Roberto','Gomez')

#PerroTrabajo( nombre , edad , color , categoria ,  dueno , postura , raza , habilidad)
#PerroCompania(nombre , edad , color , categoria ,  dueno , postura , raza , pelaje)
#PerroMestizo(nombre , edad , color , categoria ,  dueno , postura , aceptacion  , disciplina)

perroT1 = PerroTrabajo.new('Bobby' , 3 , 'Negro' , 'Principiante' , d1 , 10 , 'Boxer' , 5)
perroC1 = PerroCompania.new('Bobber' ,  4 , 'Gris' , 'Finalista' , d2 , 8 ,'Salchicha' , 8)
perroM1 = PerroMestizo.new('Cristal' , 2 , 'Marron' , 'Deportista' , d3 , 5 , 8 , 10)
perroM2 = PerroMestizo.new('Verny' , 2 , 'Azul' , 'Deportista' , d3 , 6 , 8 , 10)
perroM3 = PerroMestizo.new('Rita' , 2 , 'Naranja' , 'Deportista' , d3 , 8 , 9 , 8)

res = Resultado.new
res.agregar_perros(perroT1)
res.agregar_perros(perroC1)
res.agregar_perros(perroM1)
res.agregar_perros(perroM2)
res.agregar_perros(perroM3)

res.imprimir_resultados
res.imprimir_ganador
res.imprimir_ganador_categoría('Deportista')
