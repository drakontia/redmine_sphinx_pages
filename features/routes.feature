Feature: Routes
  As a user
  I want pages to have proper urls
  So that I can bookmark them

  Background:
    Given the ecookbook project has the backlogs plugin enabled
      And I am a scrum master of the project

  Scenario: Sphinx_Pages page
     When I get the "projects/ecookbook/sphinx_pages" page
     Then application should route me to:
          | controller | sphinx_pages |
          | action     | show         |
          | project_id | ecookbook    |
      And the request should complete successfully

  Scenario: Sphinx_Pages Settings page
     When I get the "projects/ecookbook/settings/sphinx_pages" page
     Then application should route me to:
          | controller | sphinx_pages_setting |
          | action     | show         |
          | project_id | ecookbook    |
      And the request should complete successfully

  Scenario: Task create page
     When I post the "rb/task" page with params:
          | project_id | ecookbook |
     Then application should route me to:
          | controller | rb_tasks  |
          | action     | create    |
      And the request should complete successfully

  Scenario: Task update page
     When I put the "rb/task/1" page with params:
          | project_id | ecookbook |
     Then application should route me to:
          | controller | rb_tasks  |
          | action     | update    |
          | id         | 1         |
      And the request should complete successfully

