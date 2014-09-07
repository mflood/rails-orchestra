class CreateCompositionsTags < ActiveRecord::Migration
  def change
    create_table :compositions_tags do |t|
        t.references :composition
        t.references :tag
    end
  end
end
