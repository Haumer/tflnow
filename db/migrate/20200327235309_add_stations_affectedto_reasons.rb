class AddStationsAffectedtoReasons < ActiveRecord::Migration[6.0]
  def change
    add_column :incident_reasons, :start_station, :integer, default: nil
    add_column :incident_reasons, :end_station, :integer, default: nil
  end
end
