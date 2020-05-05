class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :accommodation_id
      t.integer :destination_id
      t.integer :flight_class_id

      t.timestamps
    end
  end
end
