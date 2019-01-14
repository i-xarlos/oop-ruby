require "./Disco"

class Disco_blue_ray < Disco

	attr_accessor :director , :tiempo_total

	def initialize(nombre , director, tiempo_total)
		super(nombre)
		@director = director
		@tiempo_total = tiempo_total

	end

    def reporte_datos
        reporte = "Tipo: Blue Ray \n Nombre: #{nombre} \n Director: #{director} \n Tiempo total: #{tiempo_total}"
    end


end