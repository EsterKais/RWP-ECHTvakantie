class AddGeoAddressToVacations < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :address, :string
    add_column :vacations, :latitude, :float
    add_column :vacations, :longitude, :float
  end
end
