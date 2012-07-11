Feature: Common
  As a user
  I want to do stuff
  So that I can do my job

  Background:
    Given the ecookbook project has the sphixn_pages plugin enabled
      And I am a team member of the project

  Scenario: View the sphinx_pages
    Given I am viewing the sphinx_pages
     When I request the repository list
     Then the request should complete successfully

  Scenario: View the sphinx_pages without any repositories
    Given there are no repositoriesin the project
     When I view the sphinx_pages
     Then the request should complete successfully
