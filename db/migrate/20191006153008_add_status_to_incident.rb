class AddStatusToIncident < ActiveRecord::Migration[5.2]
  def change
    add_column :incidents, :incident_status, :string
  end
end
