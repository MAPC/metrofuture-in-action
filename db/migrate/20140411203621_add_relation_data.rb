class AddRelationData < ActiveRecord::Migration
  def up
    execute "COPY municipalities_projects FROM '#{Rails.root}/db/fixtures/relations/mf_join_muni_project.csv' DELIMITER ',' CSV HEADER"
    execute "COPY projects_subregions FROM '#{Rails.root}/db/fixtures/relations/mf_join_project_subregion.csv' DELIMITER ',' CSV HEADER"
    execute "COPY municipalities_subregions FROM '#{Rails.root}/db/fixtures/relations/mf_join_muni_subregion.csv' DELIMITER ',' CSV HEADER"
  end

  def down
    execute "TRUNCATE municipalities_projects, projects_subregions, municipalities_subregions RESTART IDENTITY"
  end
end