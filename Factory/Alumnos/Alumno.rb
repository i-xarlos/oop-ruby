class Alumno

    attr_accessor :codigo , :nombre , :apellidos
    def initialize(codigo , nombre , apellidos)
        @codigo = codigo
        @nombre =  nombre
        @apellidos = apellidos
    end

    def datos_alumno
        datos = "\nCódigo: #{codigo}\n"
        datos += "Nombre:  #{nombre}\n"
        datos += "Apellidos: #{apellidos}\n"
        return datos
    end

end