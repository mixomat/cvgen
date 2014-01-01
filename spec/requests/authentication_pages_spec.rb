require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "login page" do
    before { visit login_path }
    let(:signin) { "Sign in" }

    it { should have_selector('h2', text: 'Login') }
    it { should have_selector('title', text: 'Login') }
    it { should_not have_link('New Project', href: new_project_path) }

    describe "with invalid information" do
      before { click_button :signin }

      it { should have_selector('title', text: 'Login') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }

      describe "after visiting another page" do
        before { visit login_path }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { create(:user) }
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button :signin
      end

      it { should have_selector('title', text: user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Logout', href: logout_path) }
      it { should_not have_link(:signin, href: login_path) }

      describe "followed by logout" do
        before { click_link "Logout" }
        it { should have_selector('h2', text: 'Login') }
      end
    end
  end

  describe "Authorization" do
    describe "for non-signed-in users" do
      let(:user) { create(:user) }

      describe "in the Projects controller" do

        describe "visiting the new project page" do
          before { visit new_project_path }
          it { should have_selector('h2', text: 'Login') }
        end

        describe "submitting to the create action" do
          before { post projects_path }
          specify { response.should redirect_to(login_path) }
        end
      end

      describe "in the Technologies controller" do
        describe "visiting the technologies page" do
          before { visit technologies_path }
          it { should have_selector('h2', text: 'Login') }
        end

        describe "submitting to the create action" do
          before { post technologies_path }
          specify { response.should redirect_to(login_path) }
        end

      end
    end
  end
end