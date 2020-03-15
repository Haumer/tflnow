class CreateStationIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :station_incidents do |t|
      t.references :station, null: false, foreign_key: true
      t.references :incident, null: false, foreign_key: true

      t.timestamps
    end
  end
end
