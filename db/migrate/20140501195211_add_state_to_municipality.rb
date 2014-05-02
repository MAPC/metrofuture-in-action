class AddStateToMunicipality < ActiveRecord::Migration
  def change
    add_column :municipalities, :state_id, :integer
  end
end
