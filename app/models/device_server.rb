class DeviceServer < ApplicationRecord
  belongs_to :store

  enum status: [:ok, :error]
end
