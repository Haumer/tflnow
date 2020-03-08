class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.references :station, null: false, foreign_key: true
      t.boolean :link, default: false

      t.timestamps
    end
  end
end
