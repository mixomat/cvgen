require 'spec_helper'

describe "Users" do
  subject { page }

  describe "profile page" do
    let(:user) { create(:user) }
    before { visit user_path(user) }

    it { should have_selector("h2", :text => user.name) }
    it { should have_selector("title", :text => user.name) }
  end


end
