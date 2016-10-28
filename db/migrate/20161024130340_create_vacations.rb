class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.string :title
      t.string :country
      t.string :region
      t.string :price
      t.text :description
      t.boolean :show, default: true, null: false

      t.timestamps
    end
  end
end
