class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :country
      t.string :city
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
