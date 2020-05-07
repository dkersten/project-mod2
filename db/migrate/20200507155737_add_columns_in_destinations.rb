class AddColumnsInDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :bg_img_url, :string
    add_column :destinations, :img_url2, :string
    add_column :destinations, :img_url3, :string
  end
end
