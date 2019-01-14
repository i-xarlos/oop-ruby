class Terreno

    attr_accessor :cod , :area , :distrito , :precio_x_metro

    def initialize(cod , area , distrito , precio_x_metro)
        @cod = cod
        @area = area
        @distrito = distrito
        @precio_x_metro = precio_x_metro
    end

    def calcular_precio
    	area * precio_x_metro
    end


end