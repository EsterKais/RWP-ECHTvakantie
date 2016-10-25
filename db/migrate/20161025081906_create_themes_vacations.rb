class CreateThemesVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :themes_vacations do |t|

      # PIM added these relations manually
      t.belongs_to :theme, index: true
      t.belongs_to :vacation, index: true
    end
  end
end
