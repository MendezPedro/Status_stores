# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


DeviceServer.destroy_all
Store.destroy_all

2.times do |x|
    Store.create(
        name: "Restaurant #{x + 1}",
        status: 0)
end

devices_server = ["Impresora", "Servidor_web", "Servidor_de_base_de_datos"]
Store.all.each_with_index do |store,index|
    devices_server.each do |devices|
        DeviceServer.create(
            name: "#{devices}_#{index + 1}",
            status: 0,
            store_id: store.id
        )
    end
end