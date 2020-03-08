class CreateStationLines < ActiveRecord::Migration[5.2]
  def change
    create_table :station_lines do |t|
      t.references :branch
      t.references :station

      t.timestamps
    end
  end
end
