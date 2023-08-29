class ChangeStatusTypeInDeviceServer < ActiveRecord::Migration[7.0]
  def up
    change_column :device_servers, :status, :integer
  end

  def down
    change_column :device_servers, :status, :string
  end
end
