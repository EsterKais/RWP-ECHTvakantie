class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :name
      t.text :description
      t.string :style

      t.timestamps
    end
  end
end
