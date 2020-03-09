class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.string :name
      t.string :slug
      t.string :status
      t.string :last_update
      t.string :color

      t.timestamps
    end
  end
end
