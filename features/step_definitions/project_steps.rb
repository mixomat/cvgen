Given /^I am on the new projects page$/ do
  Technology.new(:name => "Java").save
  visit "/projects/new"
end

When /^I add a new project/ do
  fill_in "Title", :with => "Project Title"
  fill_in "Description", :with => "lorem ipsum"
  fill_in "Role", :with => "Software Engineer"
  fill_in "Customer", :with => "Allianz AG"
  select "Java", :from => "Technologies"
  click_button "Create Project"
end

When /^I add an invalid project$/ do
  fill_in "Title", :with => "Project Title"
  click_button "Create Project"
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
