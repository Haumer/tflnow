class AddColorToLine < ActiveRecord::Migration[5.2]
  def change
    add_column :lines, :color, :string
  end
end
