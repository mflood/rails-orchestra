class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :notes
      t.boolean :is_active

      t.timestamps
    end
  end
end
