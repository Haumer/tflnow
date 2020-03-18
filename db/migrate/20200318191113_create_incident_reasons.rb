class CreateIncidentReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :incident_reasons do |t|
      t.references :reason, null: false, foreign_key: true
      t.references :incident, null: false, foreign_key: true

      t.timestamps
    end
  end
end
