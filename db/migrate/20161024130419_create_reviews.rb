class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
