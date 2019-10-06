class AddFieldsToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :station_name, :string
    add_column :stations, :station_number, :integer
    add_column :stations, :station_status, :string
  end
end
