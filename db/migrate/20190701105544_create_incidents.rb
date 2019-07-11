class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.references :line, foreign_key: true

      t.timestamps
    end
  end
end
