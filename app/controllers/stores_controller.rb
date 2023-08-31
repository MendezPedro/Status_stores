class StoresController < ApplicationController
    def index
        @stores = Store.all
    end

    def server
        ServerJob.perform_async
    end
end
