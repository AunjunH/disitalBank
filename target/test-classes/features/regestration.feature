Feature:This feature will allow user to successfully create an account
  Author - Aya
  Reviewer - Dana

  Scenario: Verify Sign Up Here link redirects the user to the Sign Up page
    Given user is on Homepage
    When user clicks on sign Up Here link
    Then verify user is on the registration page

  Scenario: Verify user is able to choose a proper title from the drop-down window
    Given user is on the Registration page
    When user click on Title field
    Then verify user can see the drop-down window with title options
    When user clicks on proper selection
    Then verify chosen selection appears in the Title field

  Scenario: Verify user can enter first name
    Given user clicks on First Name field
    When user types in first name
    Then verify first name is displayed in the First Name field

  Scenario: Verify user can enter last name
    Given user clicks on Last Name field
    When user types in last name
    Then verify last name is displayed in the First Name field

  Scenario: Verify user can select gender
    When user clicks on proper radio button
    Then verify first name is displayed in the First Name field
    Given one radio button is active
    Then second radio button is not active


  Scenario Outline: Verify user can enter correct date of birth
    Given user clicks on DOB field
    When user types correct "<month>", "<day>", "<year>" format
    Then verify DOB is displayed in the First Name field
    Examples:
      | month | day | year |
      | 01    | 03  | 2000 |
      | 12    | 01  | 1995 |
      | 08    | 15  | 1967 |


  Scenario Outline: Verify user can enter correct date of birth
    Given user clicks on DOB field
    When user types incorrect "<InvMonth>", "<InvDay>", "<InvYear>" format
    Then verify user gets an error message "Please match the requested format"
    Examples:
      | InvMonth | InvDay | InvYear |
      | 01       | 03     | 2000    |
      | 12       | 01     | 1995    |
      | 08       | 15     | 1967    |

  Scenario Outline:  Verify user is able to enter correct SSN
    Given user clicks on SSN field
    When user types in correct "<SSN>" format
    Then SSN is displayed in the SSN field
    Examples:
      | SSN         |
      | 123-45-6789 |
      | 123456789   |
      | 003-45-7777 |

  Scenario Outline:  Verify user is not able to enter incorrect SSN
    Given user clicks on SSN field
    When user types incorrect "<InvalidSSN>" format
    Then error message is displayed prompting to enter correct format SSN
    Examples:
      | InvalidSSN   |
      | 123456789999 |
      | 123$567*900  |
      | 00-000-0000  |
      | 123$567*900  |
      | 00-000-0000  |



