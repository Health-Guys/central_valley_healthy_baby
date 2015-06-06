class AddHomepageToScreeningLocation < ActiveRecord::Migration
  def change
    add_column :screening_locations, :homepage, :string
  end
end
