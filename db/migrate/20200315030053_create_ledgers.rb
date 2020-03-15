class CreateLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :ledgers do |t|
      t.text :api_log, array: true, default: []
      t.text :uptime_log, array: true, default: []

      t.timestamps
    end
  end
end
