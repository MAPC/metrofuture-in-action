class CreateRegions < ActiveRecord::Migration
  def up
    create_table :regions do |t|
      t.string :name
      t.string :rpa_name
      t.string :abbr

      t.timestamps
    end

    create_table :municipalities_regions, id: false do |t|
      t.integer :municipality_id
      t.integer :region_id
    end

    execute "COPY municipalities_regions FROM '#{Rails.root}/db/fixtures/relations/municipalities_regions.csv' DELIMITER ',' CSV HEADER"
  end

  def down
    drop_table :regions
    drop_table :municipalities_regions
  end

end
