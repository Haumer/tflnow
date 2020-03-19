class AddReasonslogToLedger < ActiveRecord::Migration[6.0]
  def change
    add_column :ledgers, :reasons_log, :datetime, array: true, default: [DateTime.now]
  end
end
