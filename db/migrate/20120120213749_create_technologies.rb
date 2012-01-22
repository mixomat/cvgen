class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
    add_index :projects, :project_id
  end
end
