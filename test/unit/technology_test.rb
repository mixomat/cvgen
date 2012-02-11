require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase

  test "should not save without name" do
    technology = Technology.new
    assert !technology.save
  end

  test "should save with name" do
    technology = test_technology("HTML5")
    assert technology.save
  end

  test "should have unique name" do
    test_technology("CSS3").save

    assert !test_technology("CSS3").save
  end

  def test_technology(name)
    Technology.new(:name => name)
  end

end
