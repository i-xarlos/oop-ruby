require "./Administrador"
require "./Vista"

class Controlador

    attr_accessor :administrador

    def initialize(administrador)
        @administrador = administrador
    end

    def capturar_datos_factura(emp_emisora , ruc_emisora , ruc_emp_venta , dir_emp_venta , num_fact)
        administrador.agregar_factura(emp_emisora , ruc_emisora , ruc_emp_venta , dir_emp_venta , num_fact)
    end

    def agregar_items_factura(num_fact , tipo , datos)
        administrador.agregar_item_factura(num_fact , tipo , datos)
    end

    def imprimir_facturas
        Vista.imprimir_facturas(administrador)
    end




end