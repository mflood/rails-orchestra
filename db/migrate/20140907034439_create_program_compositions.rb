class CreateProgramCompositions < ActiveRecord::Migration
  def change
    create_table :program_compositions do |t|
      t.integer :list_order
      t.references :program, index: true
      t.references :composition, index: true
      t.references :interval, index: true

      t.timestamps
    end
  end
end
