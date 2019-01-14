require "./Disco_factory"

class Cliente

	attr_accessor :nombre , :discos

	def initialize(nombre)

		@nombre = nombre
		@discos = Array.new

	end


	def add_disc(tipo , datos)

		discos << create_disc(tipo ,  datos) #array.push

	end

	private def create_disc(tipo , datos)


		Disco_factory.create(tipo , datos)

	end


end