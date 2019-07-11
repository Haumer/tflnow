class AddReasonToIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :incidents, :reason, :string
  end
end
