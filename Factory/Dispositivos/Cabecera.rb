class Cabecera

    attr_accessor :emp_emisora , :ruc_emisora , :ruc_emp_venta , :dir_emp_venta , :num_fact , :fecha_factura

    def initialize(emp_emisora , ruc_emisora , ruc_emp_venta , dir_emp_venta , num_fact)

        @emp_emisora = emp_emisora
        @ruc_emisora = ruc_emisora
        @ruc_emp_venta = ruc_emp_venta
        @dir_emp_venta = dir_emp_venta
        @num_fact = num_fact
        @fecha_factura = Time.new

    end

    def datos_cabecera
            cabecera = "---- Factura: #{num_fact} ---- Fecha: #{fecha_factura} \n"
            cabecera += "---- Empresa emisora: #{emp_emisora} ---- Ruc emisora: #{ruc_emisora} \n"
            cabecera += "---- Dirección de venta: #{dir_emp_venta} ---- Ruc de venta: #{ruc_emp_venta} \n"
            cabecera += "------------------------------------------------------------"
        return cabecera
    end



end