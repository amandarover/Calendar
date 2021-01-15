class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :hour
      t.text :description
      t.text :local
      t.integer :repeating_frequency

      t.timestamps null: false
    end
  end
end
