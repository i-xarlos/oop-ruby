require "./Controlador"


adm = Administrador.new('Carlos')
control = Controlador.new(adm)

control.capturar_datos_factura('NCOM' , "2040581011" , '4584558545' , 'Almirante Guisse 2523' , 1000)
control.agregar_items_factura(1000, 'celular' , [101 , "descripcion1" , 50 , 100.0])
control.agregar_items_factura(1000, 'celular' , [102 , "descripcion2" , 1 , 100.0])
control.agregar_items_factura(1000, 'tablet' , [103 , "descripcion3" , 1 , 3000.0])

control.capturar_datos_factura('NCOM' , "2040581011" , '4584558545' , 'Almirante Guisse 2523' , 1001)
control.agregar_items_factura(1001, 'celular' , [101 , "descripcion1" , 10 , 100.0])
control.agregar_items_factura(1001, 'celular' , [102 , "descripcion2" , 12 , 100.0])
control.agregar_items_factura(1001, 'tablet' , [103 , "descripcion3" , 13 , 3000.0])
control.agregar_items_factura(1001, 'LapTop' , [105 , "descripcion3" , 1 , 4000.0])

control.imprimir_facturas