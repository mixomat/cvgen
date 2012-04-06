require 'spec_helper'

describe "Users" do
  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector("h2", :text => user.name) }
  end


end
