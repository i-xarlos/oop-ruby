require "./Profesor"

class ProfesorTCompleto < Profesor

    attr_accessor  :horas_x_mes , :tarifa_x_hora

	def initialize(nombre , dni , porcentaje_de_aporte , horas_x_mes , tarifa_x_hora)
        super(nombre , dni , porcentaje_de_aporte)
        @horas_x_mes = horas_x_mes
        @tarifa_x_hora = tarifa_x_hora
	end

   def sueldo
      sueldo = (horas_x_mes * tarifa_x_hora)
      sueldo = sueldo - sueldo * porcentaje_de_aporte
      return sueldo
   end

end