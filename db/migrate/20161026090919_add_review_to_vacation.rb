class AddReviewToVacation < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :review, :text
  end
end
