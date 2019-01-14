class Vista

    def self.imprimir_facturas(administrador)

        puts "=============== Administrador: #{administrador.nombre} ===============\n\n"

        for factura in administrador.facturas

            puts factura.cabecera.datos_cabecera

            for item in factura.items

                puts item.detalle

            end

            puts factura.pie_factura

        end
    end


end