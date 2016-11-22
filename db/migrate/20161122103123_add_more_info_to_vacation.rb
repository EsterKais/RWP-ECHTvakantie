class AddMoreInfoToVacation < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :more_info, :string
  end
end
