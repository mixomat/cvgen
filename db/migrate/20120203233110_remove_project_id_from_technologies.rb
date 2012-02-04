class RemoveProjectIdFromTechnologies < ActiveRecord::Migration
  def up
    remove_column :technologies, :project_id
  end

  def down
    add_column :technologies, :project_id, :integer
  end
end
