require "./Disco_cd"
require "./Disco_dvd"
require "./Disco_blue_ray"

class Disco_factory

	def self.create(tipo , datos)

		case tipo
		when 'dvd'
			Disco_dvd.new(datos[0] , datos[1])
		when 'cd'
			Disco_cd.new(datos[0] , datos[1], datos[2])
		when 'blue_ray'
			Disco_blue_ray.new(datos[0] , datos[1], datos[2])
		end
	end

end


