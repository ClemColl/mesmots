class AddAttributesToMemory < ActiveRecord::Migration[5.1]
  def change
    add_column :memories, :subtitle, :text
    add_column :memories, :date, :date
  end
end
