require "./Cliente"

class Administrador

    attr_accessor :nombre , :clientes

    def initialize(nombre)
        @nombre = nombre
        @clientes = Array.new
    end

    def agregar_cliente(cliente)
        clientes << cliente
    end


    def reporte_clientes
        for cliente in clientes
            puts "-------------------"
            puts 'Cliente: ' + cliente.nombre
            puts "-------------------"
            total = 0
            for disco in cliente.discos
                total+=1
                puts disco.reporte_datos
            end
            puts "\n Total de discos: #{total}"
            puts "================================="

        end
    end



end