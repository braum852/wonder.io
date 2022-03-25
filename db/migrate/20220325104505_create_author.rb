class CreateAuthor < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :genre
      t.text :bio
      t.integer :author_id

      t.timestamps
    end
  end
end
