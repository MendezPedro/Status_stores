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

  end
end
