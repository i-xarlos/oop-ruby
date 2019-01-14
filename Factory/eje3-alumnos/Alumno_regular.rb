require "./Alumno"

class AlumnoRegular < Alumno
    def initialize(codigo , nombre , apellidos)
        super(codigo , nombre , apellidos)
    end

     def datos_alumno
        "Tipo: Alumno REGULAR #{super} "
    end

end