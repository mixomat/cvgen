require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase

  test "should not save without name" do
    technology = Technology.new
    assert !technology.save
  end

  test "should save with name" do
    technology = Technology.new(:name => "HTML5")
    assert technology.save
  end
  
end
