require "./Terreno"

class TerrenoVacio < Terreno

    attr_accessor :direccion , :en_venta

    def initialize(cod , area , distrito , precio_x_metro , direccion)
        super(cod , area , distrito , precio_x_metro)
        @direccion = direccion   
    end

    def calcular_precio_dist(dist)

        case dist
        when 'San Borja'
            precio = 1800
        when 'La Victoria'
            precio = 1000
        when 'Surco'
            precio = 1300
        else
            precio = 1500
        end

        return precio

    end

    def calcular_precio
        area * calcular_precio_dist(distrito)
    end

    def imprimir_datos
        "Dirección: #{direccion} \nEstado: Terreno vacio "
    end

end