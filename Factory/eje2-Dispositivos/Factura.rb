require "./Dispositivo_factory"
require "./Cabecera"

class Factura

    attr_accessor :cabecera , :items

    def initialize(cabecera)
        @cabecera = cabecera
        @items = Array.new
    end

    def agregar_item(tipo , datos)
        items << crear_item(tipo, datos)
    end

    private def crear_item(tipo , datos)
        Dispositivo_factory.create(tipo , datos)
    end

    def calcular_total
        total = 0

        for item in items
            total += item.calcular_monto
        end

        return total
       #
    end

    def igv
        calcular_total * 0.18
    end

    def total_igv
        calcular_total + igv
    end


    def pie_factura
        pie = "------------------------------------------------------------ \n"
        pie += "      Total:  #{calcular_total} \n"
        pie += "        IGV:  #{igv} \n"
        pie += "Total + IGV:  #{total_igv}\n"
        pie += "-----------------------------------------------------------\n\n"

        return pie
    end


end