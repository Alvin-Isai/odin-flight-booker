class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :start_date
      t.integer :duration
      t.integer :from_airport_id
      t.integer :to_airport_id

      t.timestamps
    end
  end
end
