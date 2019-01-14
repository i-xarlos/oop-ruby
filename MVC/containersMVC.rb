class Container
	attr_accessor :peso, :tamanio, :propietario
	def initialize(peso, tamanio, propietario)
	 	@peso = peso
	 	@tamanio = tamanio
	 	@propietario = propietario
	end

	def calcular_factor
       factor = 0
       if tamanio<20
       	 factor=1.5
       elsif tamanio>=20 and tamanio <40
       	factor=1.8
       elsif tamanio>40
       	factor=2.0
       end
       return factor       		
    end

   def calcular_flete
          calcular_factor*peso/100.0
   end

end


class Container_factoria
  def self.crear(peso, tamanio, propietario)
      Container.new(peso, tamanio, propietario)
  end
  
  
end

class Administrador
   attr_accessor :nombre, :containers
   def initialize(nombre)
     @nombre=nombre
     @containers = Array.new #arreglo que se crea vacio
   end

   def registrar(peso, tamanio, propietario)
   	 containers << Container_factoria.crear(peso, tamanio, propietario)
   end

   def calcular_total_fletes
   	 suma = 0
   	 for p in containers
       suma = suma + p.calcular_flete
   	 end
   	 return suma
   end

   def calcular_nombre_mayor_flete
   	  max =0
   	for p in containers
       if p.calcular_flete > max
       	 max = p.calcular_flete
       	 nombre = p.propietario
       end
   	end
   	 return nombre
   end

   def mostrar_lista_containers
     
   end
end

class Vista
 
  def self.imprimir(flete , nombre)
    puts "Total de Fletes: #{flete}"
    puts "Nombre del mayor pago: #{nombre}"
  end
end

class Controlador
  attr_accessor :administrador 
  def initialize(administrador)
    @administrador = administrador
  end
  
  def registrar_contenedores(peso, tamanio, propietario)
      administrador.registrar(peso, tamanio, propietario)

  end


  def imprimir
     Vista.imprimir(administrador.calcular_total_fletes , administrador.calcular_nombre_mayor_flete)
  end
  
end


adm = Administrador.new("Daniel")


controller = Controlador.new(adm)
controller.registrar_contenedores(30,40,'Cesar')
controller.registrar_contenedores(20,10,'Pedro')
controller.registrar_contenedores(50,50,'Carmen')

controller.imprimir








