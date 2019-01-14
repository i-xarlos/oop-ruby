require "./Alumno_becado"
require "./Alumno_regular"
require "./Alumno_traslado"

class AlumnoFactoria

    def self.crear(tipo , datos)

        case tipo
        when 'becado'
            AlumnoBecado.new(datos[0] , datos[1] , datos[2])
        when 'regular'
            AlumnoRegular.new(datos[0] , datos[1] , datos[2])
        when 'traslado'
            AlumnoTraslado.new(datos[0] , datos[1] , datos[2])
        end
    end


end