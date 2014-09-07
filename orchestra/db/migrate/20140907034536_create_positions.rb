class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :musician, index: true
      t.references :ensemble, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end
