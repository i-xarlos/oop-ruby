class Impresora

    def self.instance
        @instance ||= new
        #puts "he sido creado una vez"
    end

    def imprimir_alumnos(administrador)
        for alumno in administrador.alumnos
            puts alumno.datos_alumno
        end

    end


    private_class_method :new

end


#a = Impresora.instance
#b = Impresora.instance

#if a == b
 #   puts "impresoras iguales"
#end