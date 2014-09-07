class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.text :notes

      t.timestamps
    end
  end
end
