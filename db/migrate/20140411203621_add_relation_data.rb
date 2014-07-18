class AddRelationData < ActiveRecord::Migration
  def up

    # COPY municipalities_projects FROM '/Users/mapcuser/Projects/MetroFuture In Action/in-action/db/fixtures/relations/mf_join_muni_project.csv' DELIMITER ',' CSV HEADER;
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_muni_project.csv",      :municipalities_projects)

    # COPY projects_subregions FROM '/Users/mapcuser/Projects/MetroFuture In Action/in-action/db/fixtures/relations/mf_join_project_subregion.csv' DELIMITER ',' CSV HEADER;
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_project_subregion.csv", :projects_subregions)

    # COPY municipalities_subregions FROM '/Users/mapcuser/Projects/MetroFuture In Action/in-action/db/fixtures/relations/mf_join_muni_subregion.csv' DELIMITER ',' CSV HEADER;
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_muni_subregion.csv",    :municipalities_subregions)
  end

  def down
    execute "TRUNCATE municipalities_projects, projects_subregions, municipalities_subregions RESTART IDENTITY"
  end
end



