require "./Disco"

class Disco_dvd < Disco

	attr_accessor :cantidad_datos

	def initialize(nombre , cantidad_datos)
		super(nombre)
		@cantidad_datos = cantidad_datos<0 ? "Datos en negativo prohibidos" : cantidad_datos

	end

    def reporte_datos
        reporte = "Tipo: DVD \n Nombre: #{nombre} \n Cantidad de datos: #{cantidad_datos}"
    end


end