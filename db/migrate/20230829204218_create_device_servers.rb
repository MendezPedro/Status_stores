class CreateDeviceServers < ActiveRecord::Migration[7.0]
  def change
    create_table :device_servers do |t|
      t.string :name
      t.string :status
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
