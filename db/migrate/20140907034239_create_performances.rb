class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.date :date
      t.time :start_time
      t.references :ensemble, index: true
      t.references :location, index: true
      t.references :performance_type, index: true
      t.references :program, index: true

      t.timestamps
    end
  end
end
