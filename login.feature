Feature: log in the Prashna site

 Scenario Outline:
    Given i go to site page
  When i click the login link
    And i enter <email> and <pass> in Login
    And i click login button
   And i verify the logout button
    Then user is signed in
   Examples:
     | email               | pass    |
     | a@domain.com        | aA123@  |
     | rail_work@domain.com| Rail123@|
     | #$%^&@domain.com    | Test1@  |

  Scenario Outline: Testing with valid users
     Given i go to site page
     When i click the login link
     And i enter <email> and <pass> in Login
     And i click login button
     Then user is not signed in
     Examples:
       | email               | pass      |
       | rihan866@domain.com | Rohan1,   |
       | bi827@domain.com    | Bob123,   |
       | olikv1223@domain.com| Oli1,     |
       | test444@domain.com  | Test2,    |
       | new440@domain.com   | New12,    |
