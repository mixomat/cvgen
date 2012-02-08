Feature: Manage Projects
  In order to manage the projects in my CV
  As a Developer
  I want to create, edit and list projects

  Scenario: Create a new project with errors
    Given I am on the new projects page
    When I add an invalid project
    Then I should see "Oh snap! You got 4 errors! Change this and that"

  Scenario: Create a new project successfully
    Given I am on the new projects page
    When I add a new project successfully
    Then I should see "Project was successfully created"
