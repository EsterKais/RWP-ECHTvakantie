class AddBookingToVacation < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :booking, :string
  end
end
