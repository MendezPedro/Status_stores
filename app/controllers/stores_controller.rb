class StoresController < ApplicationController
    def index
        @stores = Store.all
    end

    def server
        ServerJob.perform_async
    end

    def status_partial
      @stores = Store.all
      render partial: 'status_partial', locals: { store_status: @stores }
    end
end
