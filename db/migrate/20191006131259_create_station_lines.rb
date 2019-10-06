class CreateStationLines < ActiveRecord::Migration[5.2]
  def change
    create_table :station_lines do |t|
      t.references :line
      t.references :station

      t.timestamps
    end
  end
end
