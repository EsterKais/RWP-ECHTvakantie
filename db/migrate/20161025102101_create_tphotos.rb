class CreateTphotos < ActiveRecord::Migration[5.0]
  def change
    create_table :tphotos do |t|
      t.references :theme, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
