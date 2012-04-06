require 'spec_helper'

describe "Projects" do

  subject { page }

  describe "list" do
    before { visit projects_path }

    it { should have_selector('h2', :text => "List Projects") }
    it { should have_selector('title', :text => "Projects") }
    it { should have_table('project-table') }
  end

  describe "create" do
    let(:java) { FactoryGirl.create(:technology) }
    let(:ruby) { FactoryGirl.create(:technology, name => "Ruby") }

    before { visit new_project_path }

    it { should have_selector('h2', :text => "New Project") }

    describe "with invalid information" do
      it "should not create a project" do
        expect { click_button "Create Project" }.not_to change(Project, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Title", :with => "Project Title"
        fill_in "Description", :with => "lorem ipsum"
        fill_in "Role", :with => "Software Engineer"
        fill_in "Customer", :with => "Allianz AG"
        select "Java", :from => "Technologies"
      end

      it "should create a new project" do
        expect { click_button "Create Project" }.to change(Project, :count)
      end
    end
  end
end
