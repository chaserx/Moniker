Feature: Manage Monikers
  In order to create a baby name application
  As an administrator
  I want create and manage monikers
  
  Scenario: List Monikers
    Given I have monikers named Jane, Dick
    When I go to the list of monikers
    Then I should see "Jane"
    And I should see "Dick"
  
  
  

  
