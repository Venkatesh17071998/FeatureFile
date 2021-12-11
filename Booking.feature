Feature: Verifying booking confirmation in adactinpage

  Scenario Outline: Verifying booking confirmation in adactinpage by selecting all  fields
    Given user is on adactin page
    When user should enter "<username>" and "<password>" click login
    And user should search hotels "<Location>","<Hotels>","<Room Type>", "<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and "<Children per Room>"
    And user should select hotel and click continue
    And user should book a hotel have to enter "<First Name>","<Last Name>","<Billing Address>"
      | Credit Card No.  | Credit Card Type | Expiry month | Expiry year | CVV Number |
      | 1234123412341231 | VISA             | May          |        2022 |        123 |
      | 1234123412341232 | Master           | Jun          |        2023 |        124 |
      | 1234123412341233 | American express | July         |        2024 |        125 |
      | 1234123412341234 | Other            | August       |        2025 |        126 |
    Then user should get the "Booking Confirmation"

    Examples: 
      | username     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room | First Name | Last Name | Billing Address |
      | Abcdefghi123 | VT0R80   | Sydney   | Hotel Creek | Double    | 2 - Two         | 16/11/2021    | 17/11/2021     | 2 - Two         | 2- Two            | Venkatesh  | M         | Thoraipakkam    |
