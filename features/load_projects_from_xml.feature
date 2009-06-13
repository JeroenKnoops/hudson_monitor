Feature: Load Projects from xml
  In order to see when developers make mistakes
  As a developer 
  I want to see the data realtime.
  
  Scenario Outline: Show successful, failed, unstable Projects
    Given the following cc-url 'spec/data/cc.xml'
    And I am on the project dashboard
    Then I should see "<project>" in <color>

    Examples:
      | project        | color  |
      | hudson_monitor | yellow |
      | Synthlijst.nl  | green  |
      | MissingLinq    | red    |