Feature: Routes
  As a user
  I want pages to have proper urls
  So that I can bookmark them

  Background:
    Given the ecookbook project has the backlogs plugin enabled
      And I am a administrator of the project

  Scenario: Sphinx_Pages page
     When I get the "projects/ecookbook/sphinx_pages" page
     Then application should route me to:
          | controller | sphinx_pages |
          | action     | show         |
          | project_id | ecookbook    |
      And the request should complete successfully

  Scenario: Sphinx_Pages Settings page
     When I get the "settings/plugin/redmine_sphinx_pages" page
     Then application should route me to:
          | controller | sphinx_pages_setting |
          | action     | show         |
      And the request should complete successfully

  Scenario: Sphinx_Pages Project Settings page
     When I get the "projects/ecookbook/settings/sphinx_pages" page
     Then application should route me to:
          | controller | sphinx_pages_project_setting |
          | action     | show         |
          | project_id | ecookbook    |
      And the request should complete successfully

