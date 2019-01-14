class Modelo

	attr_accessor :x , :y

	def initialize( x, y)
		@x = x
		@y = y
	end
	
	def mult
		x * y
	end

end

class Vista

	def imprimir_resultado(resultado)
		puts "Resultado: #{resultado}"
	end
	
	
end

class Controlador

	attr_accessor :modelo , :vista
	def initialize(modelo , vista)
		@modelo = modelo
		@vista = vista
	end

	def imprimir_mult
		vista.imprimir_resultado(modelo.mult)
	end
	
	
end


modelo = Modelo.new(3,4)
vista = Vista.new
controlador = Controlador.new(modelo , vista)
#+++++++++++++++++++
controlador.imprimir_mult