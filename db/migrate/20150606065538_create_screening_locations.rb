class CreateScreeningLocations < ActiveRecord::Migration
  def change
    create_table :screening_locations do |t|
      t.references :disease, index: true
      t.string :street
      t.string :name
      t.string :phone
      t.string :zipcode
      t.decimal :longitude
      t.decimal :latitude
      t.string :state

      t.timestamps
    end
  end
end
