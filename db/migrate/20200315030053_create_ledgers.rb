class CreateLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :ledgers do |t|
      t.datetime :api_log, array: true, default: [DateTime.now]
      t.datetime :uptime_log, array: true, default: [DateTime.now]

      t.timestamps
    end
  end
end
