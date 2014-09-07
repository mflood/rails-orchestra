class CreateCompositionParts < ActiveRecord::Migration
  def change
    create_table :composition_parts do |t|
      t.string :name
      t.string :url
      t.integer :composition_id

      t.timestamps
    end
  end
end
