class ChangeGeographyToGeometry < ActiveRecord::Migration
  def up
    remove_column :municipalities, :geom
    add_column    :municipalities, :geom, :multi_polygon, srid: 3785

    change_table :municipalities do |t|
      t.index :geom, spatial: true
    end
  end

  def down
    remove_column :municipalities, :geom
    add_column    :municipalities, :geom, :multi_polygon, geographic: true
  end
end