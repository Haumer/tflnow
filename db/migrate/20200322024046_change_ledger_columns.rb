class ChangeLedgerColumns < ActiveRecord::Migration[6.0]
  def up
    rename_column :ledgers, :api_log, :old_api_log
    rename_column :ledgers, :uptime_log, :old_uptime_log
    rename_column :ledgers, :day_log, :old_day_log
    add_column :ledgers, :api_log, :datetime, array: true, default: [DateTime.now]
    add_column :ledgers, :uptime_log, :datetime, array: true, default: [DateTime.now]
    add_column :ledgers, :day_log, :text, array: true, default: []
  end

  def down
    rename_column :ledgers, :old_api_log, :api_log
    rename_column :ledgers, :old_uptime_log, :uptime_log
    remove_column :ledgers, :api_log, array: true
    remove_column :ledgers, :uptime_log, array: true
    remove_column :ledgers, :day_log, array: true
  end
end
