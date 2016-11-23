class AddSlugToThemes < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :slug, :string
    add_index :themes, :slug, unique: true
  end
end
