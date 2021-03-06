class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.date :depart_date
      t.date :return_date
      t.string :depart_time
      t.string :return_time
      t.string :mode
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
