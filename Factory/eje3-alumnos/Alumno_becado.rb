require "./Alumno"

class AlumnoBecado < Alumno
    def initialize(codigo , nombre , apellidos)
        super(codigo , nombre , apellidos)
    end

     def datos_alumno
        "Tipo: Alumno BECADO #{super} "
    end
end


#al = AlumnoBecado.new(10, 'n' , 'y')