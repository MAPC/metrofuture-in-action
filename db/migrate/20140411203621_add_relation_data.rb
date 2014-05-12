class AddRelationData < ActiveRecord::Migration
  def up
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_muni_project.csv",      :municipalities_projects)
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_project_subregion.csv", :projects_subregions)
    copy_filedata("#{Rails.root}/db/fixtures/relations/mf_join_muni_subregion.csv",    :municipalities_subregions)
  end

  def down
    execute "TRUNCATE municipalities_projects, projects_subregions, municipalities_subregions RESTART IDENTITY"
  end
end