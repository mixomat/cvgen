require 'spec_helper'

describe "Technology" do

  subject { page }

  describe "list" do
    before { visit technologies_path }

    it { should have_selector("title", :text => "Technologies")}
  end
end