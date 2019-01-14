require "./Cliente"
require "./Administrador"

client1 = Cliente.new('Carlos')
client1.add_disc('cd', ['Guns & Roses', 10 , 5.5] )
client1.add_disc('cd', ['Elvis Presley', 10 , 5.5] )
client1.add_disc('dvd', ['Taboo', 10 ] )
client1.add_disc('blue_ray' , ['Reservoir Dogs', 'Quentin Tarantino',  1.10 ] )


client2 = Cliente.new('Pedro')
client2.add_disc('cd', ['ACDC', 10 , -5.5] )
client2.add_disc('cd', ['Daddy Yankee', 10 , 5.5] )
client2.add_disc('cd', ['Queen', 10 , 6.5] )
client2.add_disc('dvd', ['Rambo', 10 ] )
client2.add_disc('dvd', ['Rambo2', -10 ] )
client2.add_disc('blue_ray' , ['Kill Bill. Volumen 1', 'Quentin Tarantino',  2.10 ] )

adm = Administrador.new('Admin1')
adm.agregar_cliente(client1)
adm.agregar_cliente(client2)

adm.reporte_clientes

#for disco in client.discos
 #puts disco.reporte_datos
#end

