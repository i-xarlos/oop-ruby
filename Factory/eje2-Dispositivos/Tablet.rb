require "./Dispositivo"

class Tablet < Dispositivo

    def initialize(cod , descripcion , cantidad, precio_unitario)
        super(cod , descripcion , cantidad, precio_unitario)
    end

    def descuento
        const / (const + 4)
    end

     def calcular_monto
        precio = super - (super * descuento)
        return precio
    end

    def detalle
         "Tablet: #{super}"
    end


end

#cel = Tablet.new(100, 'des' , 20 , 2.0)
#puts cel.descuento
#puts cel.calcular_monto
#puts cel.detalle