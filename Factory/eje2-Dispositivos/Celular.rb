require "./Dispositivo"

class Celular < Dispositivo

    def initialize(cod , descripcion , cantidad, precio_unitario)
        super(cod , descripcion , cantidad, precio_unitario)
    end

    def descuento
        const / (const + 7)
    end

    def calcular_monto
        precio = super - (super * descuento)
        return precio
    end

    def detalle
        "Celular: #{super}"
    end

end


#cel = Celular.new(100, 'des' , 20 , 2.0)
#puts cel.descuento
#puts cel.calcular_monto
#puts cel.detalle
