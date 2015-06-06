class CreatePrevalances < ActiveRecord::Migration
  def change
    create_table :prevalances do |t|
      t.string :case_count
      t.references :disease, index: true
      t.float :screened
      t.integer :california_region
      t.decimal :disorder_percent

      t.timestamps
    end
  end
end
