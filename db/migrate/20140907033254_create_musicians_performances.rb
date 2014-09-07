class CreateMusiciansPerformances < ActiveRecord::Migration
  def change
    create_table :musicians_performances do |t|
      t.integer  :musician_id
      t.integer  :performance_id
    end
  end
end
