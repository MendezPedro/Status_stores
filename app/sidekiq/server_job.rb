class ServerJob
  include Sidekiq::Job
  require 'net/http'

  queue_as :default

  def perform
    # Url de endpoint local 
    url = URI.parse('http://localhost:3000/api/v1/status_report')

    # Configurar la solicitud HTTP
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Post.new(url.path, {'Content-Type' => 'application/json'})

    # Enviar la solicitud y obtener la respuesta
    response = http.request(request)

    # Actualizar dispositivos y servidores
    if response.code == '200'
      data = JSON.parse(response.body)

      data.each do |device_name, status|
        device = DeviceServer.find_by(name: device_name)
        if status == 200
          device.update(status: 0)
        else
          device.update(status: 1)
        end
      end
    end

    # Actualizar las tiendas
    Store.all.each do |store|
      device_array = store.device_server.pluck(:status)
      if device_array.all? { |status| status == "ok" }
        store.update(status: 0)
      elsif device_array.all? { |status| status == "error" }
        store.update(status: 2)
      else
        store.update(status: 1)
      end      
    end

  end
end
