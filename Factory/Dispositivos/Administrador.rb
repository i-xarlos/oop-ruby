require "./Factura"

class Administrador

    attr_accessor :nombre , :facturas

    def initialize(nombre)
        @nombre = nombre
        @facturas = Array.new
    end

    def agregar_factura(emp_emisora , ruc_emisora , ruc_emp_venta , dir_emp_venta , num_fact)
        facturas << Factura.new(Cabecera.new(emp_emisora , ruc_emisora , ruc_emp_venta , dir_emp_venta , num_fact))
    end

    def agregar_item_factura(num_fact , tipo , datos)

        buscar_factura(num_fact).agregar_item(tipo , datos)

    end

     private def buscar_factura(num_fact)

        for factura in facturas
            if(factura.cabecera.num_fact == num_fact)
                 return factura
            end
        end
    end


end