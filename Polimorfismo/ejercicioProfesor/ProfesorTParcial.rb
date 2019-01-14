require "./Profesor"

class ProfesorTParcial < Profesor

    attr_accessor :sueldo_bruto

	def initialize(nombre , dni , porcentaje_de_aporte, sueldo_bruto)
        super(nombre , dni , porcentaje_de_aporte)
        @sueldo_bruto = sueldo_bruto
	end

    def sueldo
         sueldo_bruto - sueldo_bruto * porcentaje_de_aporte
    end




end