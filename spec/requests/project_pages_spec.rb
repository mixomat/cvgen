require 'spec_helper'

describe "Projects" do

  subject { page }

  let(:user) { create(:user) }
  before { sign_in user }

  describe "list" do
    before { visit projects_path }

    it { should have_selector('title', text: "Projects") }
    it { should have_selector('h2', text: "List Projects") }
    it { should have_table("project-table") }
    it { should have_selector('th', text: "Title") }
    it { should have_selector('th', text: "Start") }
    it { should have_selector('th', text: "End") }
  end

  describe "create" do
    let(:java) { create(:technology) }
    let(:ruby) { create(:technology, name: "Ruby") }

    before { visit new_project_path }

    it { should have_selector('h2', :text => "New Project") }

    describe "with invalid information" do
      it "should not create a project" do
        expect { click_button "Create Project" }.not_to change(Project, :count)
      end
    end

    describe "with almost valid information" do
      before do
        fill_in 'Title', :with => 'Project Title'
        fill_in 'Description', :with => 'lorem ipsum'
        fill_in 'Role', :with => 'Software Engineer'
        fill_in 'Customer', :with => 'Allianz AG'
        select Date.today.year.to_s, :from => 'project_start_date_1i'
        select Date.today.year.to_s, :from => 'project_end_date_1i'
      end

      it "should not create a new project" do
        expect { click_button "Create Project" }.not_to change(Project, :count)
      end
    end
  end
end
