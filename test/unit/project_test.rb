require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test "save without any required attributes" do
    project = Project.new
    assert !project.save
  end

  test "save with some required attributes" do
    project = Project.new(:title => "Nice Project", :description => "crazy")
    assert !project.save
  end

  test "save with all required attributes" do
    project = Project.new(:title => "Nice Project", :description => "crazy", :role => "Software Engineer", :customer => "iteratec", :technologies => [Technology.new(:name => "CSS3")])
    assert project.save
  end

end
