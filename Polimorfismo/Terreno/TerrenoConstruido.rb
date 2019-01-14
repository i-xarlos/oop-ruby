require "./Terreno"

class TerrenoConstruido < Terreno

    attr_accessor :distrito , :area_construida

    def initialize(cod , area , distrito , precio_x_metro , area_construida)
        super(cod , area , distrito , precio_x_metro)
        @area_construida = area_construida

    end

    def calcular_precio
            super + area_construida * 80
    end

    def imprimir_datos
    	"Area construida: #{area_construida} \nEstado: Terreno Construido"
    end

end