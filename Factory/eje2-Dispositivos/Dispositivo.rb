class Dispositivo

    CONST_FACTOR = 1.0

    attr_accessor  :const , :cod , :descripcion , :cantidad , :precio_unitario

    def initialize(cod , descripcion , cantidad, precio_unitario)
        @cod = cod
        @descripcion = descripcion
        @cantidad = cantidad
        @precio_unitario = precio_unitario
        @const = CONST_FACTOR
    end


    def descuento
    end

    def calcular_monto
        cantidad * precio_unitario
    end

    def detalle
         "Cod: #{cod} Desc: #{descripcion} Cantidad: #{cantidad} Precio unitario: #{precio_unitario} Precio: #{calcular_monto}"
    end


end