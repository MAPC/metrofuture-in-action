class IndexEverything < ActiveRecord::Migration
  def change
    add_index :municipalities,          :county_id
    add_index :municipalities,          :state_id
    add_index :municipalities_regions, [:municipality_id, :region_id]
  end

end
