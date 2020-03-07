class AddBranchtoStationLines < ActiveRecord::Migration[6.0]
  def change
    add_column :station_lines, :branch, :boolean, default: false
  end
end
