class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :country
      t.string :city
      # Mode of Travel
      t.string :mode
      t.date :depart_date
      t.date :return_date

      t.timestamps
    end
  end
end
