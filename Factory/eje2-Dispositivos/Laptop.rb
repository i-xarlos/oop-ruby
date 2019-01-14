require "./Dispositivo"

class Laptop < Dispositivo

    def initialize(cod , descripcion , cantidad, precio_unitario)
        super(cod , descripcion , cantidad, precio_unitario)
    end

    def descuento
        const / (const + 1)
    end

     def calcular_monto
        precio = super - (super * descuento)
        return precio
    end

    def detalle
         "Laptop: #{super}"
    end

end