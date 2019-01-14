require "./Disco"

class Disco_cd < Disco

	attr_accessor :num_pistas , :tiempo_total

	def initialize(nombre , num_pistas , tiempo_total)

        super(nombre)
        @num_pistas = num_pistas
        @tiempo_total = tiempo_total<0 ? "Datos en negativo prohibidos" : tiempo_total

	end

    def reporte_datos
        reporte = "Tipo: Cd \n Nombre: #{nombre} \n Num. Pistas: #{num_pistas} \n Tiempo total: #{tiempo_total}"
    end


end