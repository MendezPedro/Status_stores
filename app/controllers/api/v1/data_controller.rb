module Api
  module V1
    class DataController < BaseController

      def status_report
        unless params[:user].present?
          render json: { mensaje: 'Error de usuario' }, status: :bad_request
          return 
        end
        report = params
        puts report

        render json: { mensaje: 'Reporte recibido con éxito' }, status: :ok
      end
    end
  end
end
