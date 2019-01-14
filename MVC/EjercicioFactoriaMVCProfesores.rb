class Profesor
	attr_accessor :codigo, :nombre, :dni
	def initialize(codigo,nombre,dni)
		@codigo, @nombre, @dni=codigo, nombre, dni
	end

	def calcular_sueldo_neto
	end
end

class Profesortiempocompleto < Profesor
	attr_accessor :afp, :sueldo
	def initialize(codigo,nombre,dni,afp,sueldo)
		super(codigo,nombre,dni)
		@afp, @sueldo=afp, sueldo
	end
#sobre escritura, over

	def calcular_sueldo_neto
		sueldo - afp*sueldo
	end
end

class ProfesortiempoParcial < Profesor
	attr_accessor :horas, :tarifa_hora
	def initialize(codigo,nombre,dni,horas,tarifa_hora)
		super(codigo,nombre,dni)
		@horas, @tarifa_hora=horas, tarifa_hora
	end
	def calcular_sueldo_neto
		horas * tarifa_hora
	end
end


class Administrador
  attr_accessor :profesores
  def initialize
		@profesores = Array.new
  end

  def registrar(codigo, nombre, dni, dato1, dato2, tipo)
  	  profesor = Factoria.crear(codigo, nombre, dni,dato1, dato2, tipo)
  	  profesores.push(profesor)
  end

  def calcular_planilla
  	 suma = 0
  	 for p in profesores
  	 	 suma = suma + p.calcular_sueldo_neto
  	 end
  	 suma
  end

end

class Factoria
	def self.crear(codigo, nombre, dni, dato1, dato2, tipo)
	  case tipo
  	  when 1
  	        profesor=ProfesortiempoParcial.new(codigo, nombre, dni, dato1, dato2)
  	  when 2
  	        profesor=Profesortiempocompleto.new(codigo, nombre,dni, dato1, dato2)
  	  end
	end
end

class Controller
    attr_accessor :administrador, :vista
    def initialize(administrador, vista)
    	@administrador, @vista = administrador, vista
    end
    def captura_datos(codigo, nombre, dni, dato1, dato2, tipo)
    	administrador.registrar(codigo, nombre, dni, dato1, dato2, tipo)
    end

   def imprimir_planilla
   	  vista.muestra_planilla(administrador)
   end
end

class Vista
	def initialize
	end
    def muestra_planilla(administrador)
   	puts "Planilla: #{administrador.calcular_planilla}"
   end
end

#########
administrador = Administrador.new
vista = Vista.new
controller = Controller.new(administrador,vista)
controller.captura_datos("100","Pepe","78945612",30,30,1)
controller.captura_datos("200","Luis","12365478", 2000,0.13,2)
controller.imprimir_planilla











