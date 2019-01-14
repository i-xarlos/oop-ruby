class Impresora
	def self.instance
		@instance ||= new
	end

	def imprime

		"Hola..."
	end

	private_class_method :new

end

s = Impresora.instance
puts s.imprime

a = Impresora.instance
puts a.imprime

if(s==a)
	puts 'son la misma instancia'
end