class AddHighlightToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :highlight, :boolean
  end
end
