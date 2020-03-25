class AddParsedStatusToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :parsed, :boolean, default: false
  end
end
