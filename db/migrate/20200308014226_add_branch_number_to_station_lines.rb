class AddBranchNumberToStationLines < ActiveRecord::Migration[6.0]
  def change
    add_column :station_lines, :branch_number, :integer, default: 1
  end
end
