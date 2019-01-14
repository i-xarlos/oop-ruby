require "./Terreno"

class TerrenoVenta < Terreno

    attr_accessor :telefono , :fecha_registro , :en_venta

    def initialize(cod , area , distrito , precio_x_metro , telefono , fecha_registro , en_venta)
         super(cod , area , distrito , precio_x_metro)
         @telefono = telefono
         @fecha_registro = fecha_registro
         @en_venta = en_venta
    end

    def calcular_precio
    	
    	if en_venta == 1
    		 precio = super
    	else
    		 precio = super * 1.1
    	end

    	return precio
         
    end


     def imprimir_datos
     	dato = ''
     	
     	if en_venta == 1
     		dato = 'sí'
     	else 
     		dato = 'no'
     	end

    	return "Teléfono: #{telefono} \nFecha de registro: #{fecha_registro} \nEn venta: #{dato} \nEstado: Terreno en venta"
    end


end