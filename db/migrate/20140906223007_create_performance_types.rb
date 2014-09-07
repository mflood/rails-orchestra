class CreatePerformanceTypes < ActiveRecord::Migration
  def change
    create_table :performance_types do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
