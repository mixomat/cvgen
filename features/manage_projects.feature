Feature: Manage Projects
  In order to manage the projects in my CV
  As a Developer
  I want to create, edit and list projects

  Scenario: Projects List
    Given I have projects titled Allianz, Payback
    When I go to the list of projects
    Then I should see Allianz
    And I should see Payback