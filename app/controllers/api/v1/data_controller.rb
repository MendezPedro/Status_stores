module Api
  module V1
    class DataController < BaseController

      def status_report
        options = [200, 404]
        data = {
          Impresora_1: options[rand(options.length)],
          Servidor_web_1: options[rand(options.length)],
          Servidor_de_base_de_datos_1: options[rand(options.length)],
          Impresora_2: options[rand(options.length)],
          Servidor_web_2: options[rand(options.length)],
          Servidor_de_base_de_datos_2: options[rand(options.length)]
        }
        render json: data
      end
    end
  end
end
