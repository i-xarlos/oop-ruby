require "./Alumno_factoria"

class Administrador

    attr_accessor :alumnos

    def initialize(nombre)
        @nombre = nombre
        @alumnos = Array.new
    end

    def agregar_alumno(tipo , datos)
        alumnos << AlumnoFactoria.crear(tipo, datos)
    end

end