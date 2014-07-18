class AddRegionData < ActiveRecord::Migration
  def up
    # COPY municipalities_regions FROM '/Users/mapcuser/Projects/MetroFuture In Action/in-action/db/fixtures/relations/municipalities_regions.csv' DELIMITER ',' CSV HEADER;
    copy_filedata("#{Rails.root}/db/fixtures/relations/municipalities_regions.csv", :municipalities_regions)
  end

  def down
    execute "TRUNCATE municipalities_regions RESTART IDENTITY"
  end

end