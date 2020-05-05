class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.string :img_url

      t.timestamps
    end
  end
end
