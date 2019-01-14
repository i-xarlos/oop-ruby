require "./Alumno"

class AlumnoTraslado < Alumno
    def initialize(codigo , nombre , apellidos)
        super(codigo , nombre , apellidos)
    end

     def datos_alumno
        "Tipo: Alumno TRASLADO #{super} "
    end



end