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

class Administrador
   attr_accessor :nombre, :containers
   def initialize(nombre)
     @nombre=nombre
     @containers = Array.new #arreglo que se crea vacio
   end

   def registrar(container)
   	 @containers.push(container)
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
end

con1 = Container.new(30, 40,"Cesar")
con2 = Container.new(20, 10, "Pedro")
con3 = Container.new(50, 50, "Carmen")

adm = Administrador.new("Daniel")
adm.registrar(con1) 
adm.registrar(con2)
adm.registrar(con3)
flete = adm.calcular_total_fletes
puts "Total de Fletes: #{flete}"
puts "Nombre del mayor pago: #{adm.calcular_nombre_mayor_flete}"







