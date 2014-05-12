class AddRegionData < ActiveRecord::Migration
  def up
    copy_filedata("#{Rails.root}/db/fixtures/relations/municipalities_regions.csv", :municipalities_regions)
  end

  def down
    execute "TRUNCATE municipalities_regions RESTART IDENTITY"
  end

end