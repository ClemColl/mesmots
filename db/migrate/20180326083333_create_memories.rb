class CreateMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :memories do |t|
      t.text :text
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
