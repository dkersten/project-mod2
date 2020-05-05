class UpdateColumnsInDestinations < ActiveRecord::Migration[6.0]
  def change
    rename_column :destinations, :name, :city
    add_column :destinations, :country, :string
    add_column :destinations, :cuisine, :string
  end
end
