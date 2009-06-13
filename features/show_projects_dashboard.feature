Feature: Show Projects Dashboard
  In order to see when developers make mistakes
  As a developer 
  I want to see an overview of all Projects with their current build state
  
  Scenario Outline: Show successful, failed, unstable Projects
    Given the following project records
      | name           | state      |
      | hudson_monitor | Success    |
      | synthlijst.nl  | Unstable   |
      | gynzy.com      | Failure    |
    And I am on the project dashboard
    Then I should see "<project>" in <color>

    Examples:
      | project        | color  |
      | hudson_monitor | green  |
      | synthlijst.nl  | yellow |
      | gynzy.com      | red    |
