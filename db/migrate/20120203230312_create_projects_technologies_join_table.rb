class CreateProjectsTechnologiesJoinTable < ActiveRecord::Migration
  def change
    create_table :projects_technologies, :id => false do |t|
      t.integer :project_id
      t.integer :technology_id
    end
  end
end
