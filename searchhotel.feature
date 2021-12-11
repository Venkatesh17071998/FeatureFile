Feature: Verifying Adactin search hotel

  Scenario Outline: Verifying adactin page by entering all fields and navigate to search hotels
    Given user is on adactin page
    When user should enter "<username>" and "<password>" click login
    And user should search hotels "<Location>","<Hotels>","<Room Type>", "<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>""<Children per Room>"and click search
    Then user should verify "search hotels"

    Examples: 
      | username     | password  | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | Abcdefghi123 | VT0R80 | Sydney   | Hotel Creek | Double    | 2 - Two         | 17/11/2021    | 18/11/2021     | 2 - Two         | 2- Two            |

  Scenario Outline: Verifying adactin page by entering all mandatory fields and navigate to search hotels
    Given user is on adactin page
    When user should enter "<username>" and "<password>" click login
    And user should search hotels "<Location>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and click search
    Then user should verify "search hotels"

    Examples: 
      | username     | password  | Location | Number of Rooms | Check In Date | Check Out Date | Adults per Room |
      | Abcdefghi123 | VT0R80 | Sydney   | 2 - Two         | 17/11/2021    | 18/11/2021     | 2 - Two         |

  Scenario Outline: Verifying  date checking in adactin page
    Given user is on adactin page
    When user should enter "<username>" and "<password>" click login
    And user should enter "<Check In Date>"and enter invalid"<Check Out Date>"
    Then user should verify "Check-In Date shall be before than Check-Out Date" and "Check-Out Date shall be after than Check-In Date"

    Examples: 
      | username     | password  | Check In Date | Check Out Date |
      | Abcdefghi123 | VT0R80 | 17/11/2021    | 16/11/2021     |

  Scenario Outline: Verifying adactin page without entering all fields and click to search
    Given user is on adactin page
    When user should enter "<username>" and "<password>" click login
    And user should click search without entering all fields
    Then user should verify "Please Select a Location","Please Select Total Number of Rooms"and" Please Select Adults per Room"

    Examples: 
      | username     | password  |
      | Abcdefghi123 | VT0R80 |
