require 'spec_helper'

describe "Technology" do

  subject { page }
  let(:user) { FactoryGirl.create(:user) }
  before do
    sign_in user
    visit technologies_path
  end

  describe "list" do

    it { should have_selector("title", :text => "Technologies") }
    it { should have_selector("h2", :text => "Technologies") }
    it { should_not have_selector("#notice", :text => "Technology was successfully created.") }
  end

  describe "create" do

    describe "with valid information" do
      before { fill_in "technology_name", :with => "Rails" }

      it "should create a new technology" do
        expect { click_button "Create Technology" }.to change(Technology, :count)
      end
    end
  end
end