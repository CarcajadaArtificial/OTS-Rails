# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = 500
v = 505
x = 500
y = 505
for i in 600..605
  Cliente.create([{id: i, credencial_cliente: "prueba#{i}", empresa_cliente: "Prueba #{i}", responsable_cliente: "Juan", telefono_cliente: "012345678", email_cliente: "abc@gmail.com", comisionista_cliente: "Pedro", porcentage_cliente: 15}])
  for k in u..v
    Vehiculo.create([{id: k, placas_vehiculo: "abc#{k}", marca_vehiculo: "Nissan", modelo_vehiculo: "Versa", ano_vehiculo: "2017", rendimientohistorico_vehiculo: "0.15", operador_vehiculo: "Pepe", credencialcliente_vehiculo: "prueba#{i}"}])
    for n in x..y
      Recibo.create([{id: n, kmactual_recibo: 100+x, combustible_recibo: 100, sobres_recibo: 1, placas_recibo: "abc#{k}", preciogas_recibo: "15", emailrepresentante_recibo: "admin@ots.com"}])
    end
    x = x+6
    y = y+6
  end
  v = v+6
  u = u+6
end
