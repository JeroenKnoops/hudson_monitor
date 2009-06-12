Feature: Show Projects Dashboard
  In order to see when developers make mistakes
  As a developer 
  I want to see an overview of all Projects with their current build state
  
  Scenario: Show successful, failed, unstable Projects
    Given the following project records
      | name           | state      |
      | hudson_monitor | successful |
      | synthlijst.nl  | unstable   |
      | gynzy.com      | failed     |
    And I am on the project dashboard
    Then I should see "hudson_monitor : successful"
    And I should see "synthlijst.nl : unstable"
    And I should see "gynzy.com : failed"
