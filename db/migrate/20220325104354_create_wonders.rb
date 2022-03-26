class CreateWonders < ActiveRecord::Migration[6.1]
  def change
    create_table :wonders do |t|
      t.string :title
      t.integer :year_discovered
      t.text :description
      t.integer :location_id

      t.timestamps
    end
  end
end
