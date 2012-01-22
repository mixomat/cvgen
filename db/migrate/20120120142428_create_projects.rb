class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :role
      t.string :customer
      t.text :description

      t.timestamps
    end
  end
end
