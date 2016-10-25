class CreateVphotos < ActiveRecord::Migration[5.0]
  def change
    create_table :vphotos do |t|
      t.references :vacation, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
