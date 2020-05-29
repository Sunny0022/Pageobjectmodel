Feature: log in the Prashna site

 Scenario Outline:
    Given i go to site page
  When i click the login link
    And i enter <email> and <pass> in Login
    And i click login button
    Then user is signed in
   Examples:
     | email               | pass    |
     | a@domain.com        | aA123@  |
     | rail_work@domain.com| Rail123@|
     | 123456789@domain.com| New123@ |
     | #$%^&@domain.com    | Test1@  |

  Scenario Outline: Testing with valid users
     Given i go to site page
     When i click the login link
     And i enter <email> and <pass> in Login
     And i click login button
     Then user is not signed in
     Examples:
       | email             | pass    |
       | rohan1@domain.com | Rohan1, |
       | test7@domain.com  | Test2,  |
       | bob17@domain.com  | Bob123, |
       | olive5@domain.com | Olive1, |
       | new124@domain.com | New12,  |
