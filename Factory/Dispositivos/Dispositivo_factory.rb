require "./Celular"
require "./Laptop"
require "./Tablet"

class Dispositivo_factory

    def self.create(tipo, datos)

        case tipo.downcase
        when 'celular'
            Celular.new(datos[0], datos[1] , datos[2] , datos[3])
        when 'laptop'
            Laptop.new(datos[0], datos[1] , datos[2] , datos[3])
        when 'tablet'
            Tablet.new(datos[0], datos[1] , datos[2] , datos[3])
        end

    end


end