class AddSlugToVacations < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :slug, :string
    add_index :vacations, :slug, unique: true
  end
end
