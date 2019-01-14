require "./trabajador"

class Contrato

	attr_accessor :num_contrato ,  :horas , :tarifa_hora , :lugar , :mes , :proyecto , :trabajador

	def initialize(num_contrato , horas , tarifa_hora , lugar , mes , proyecto , trabajador)
		@num_contrato = num_contrato
		@horas = horas
		@tarifa_hora = tarifa_hora
		@lugar = lugar
		@mes = mes
		@proyecto = proyecto
		@trabajador = trabajador
	end

	def calcular_sueldo_bruto
		return horas * tarifa_hora
	end

	def calcular_bono
		porcentaje = 0

		case lugar
		when 'Costa'
			porcentaje = 0.10
		when 'Sierra'
			porcentaje = 0.20
		when 'Selva'
			porcentaje = 0.30		
		end

		return porcentaje * calcular_sueldo_bruto
	end

	def calcular_sueldo_neto
		return calcular_sueldo_bruto + calcular_bono
	end
	
	

end