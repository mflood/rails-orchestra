class CreateCompositionResources < ActiveRecord::Migration
  def change
    create_table :composition_resources do |t|
      t.string :name
      t.string :url
      t.integer :composition_id

      t.timestamps
    end
  end
end
