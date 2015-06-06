class AddCityToScreeningLocation < ActiveRecord::Migration
  def change
    add_column :screening_locations, :city, :string
  end
end
