class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.references :line, foreign_key: true
      t.string :reason
      t.string :status

      t.timestamps
    end
  end
end
