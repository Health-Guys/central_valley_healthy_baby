class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.text :description
      t.string :name
      t.string :link
      t.text :early_signs

      t.timestamps
    end
  end
end
