class Store < ApplicationRecord
    has_many :device_server

    enum status: [:ok, :warning, :error]
end
