class MoveStationNumberToStationLines < ActiveRecord::Migration[6.0]
  def change
    add_column :station_lines, :position, :integer, default: nil
    remove_column :stations, :station_number, :integer

    rename_column :stations, :station_name, :name
    rename_column :stations, :station_status, :status
  end
end
