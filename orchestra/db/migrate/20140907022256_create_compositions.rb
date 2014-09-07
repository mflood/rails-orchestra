class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :title
      t.string :composer
      t.string :arranger
      t.text :notes

      t.timestamps
    end
  end
end
