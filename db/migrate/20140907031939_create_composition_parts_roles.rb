class CreateCompositionPartsRoles < ActiveRecord::Migration
  def change
    create_table :composition_parts_roles do |t|
      t.references :composition_part
      t.references :role
    end
  end
end
