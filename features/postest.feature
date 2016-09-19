Feature: Test point of sale machine
  BR1 Shopper can add all items in the list.
  Items text box should display total variety of items picked up
  BR2 Shopper can add all items in the list.
  Quantity text box should display total quantity of items picked up
  BR3 Shopper can add items in the list.
  Quantity has to between 0 and 10. Else warning message is displayed
  BR4 Shopper can add items in the list.
  Price has be the total price before tax and discount
  BR4 Shopper can add items in the list.
  Grand total has be the total price after tax and discount

  Scenario: Shopper  add one item and grand total calculated after tax and discount
    Given existing shopper picks one item with a permitted quantity
    When the billing is done
    Then user is charged with amount after tax and discount
    
    
    Scenario: Yahoo Login
      Given I have yahoo login credentials
      When used on web pae
      Then I could login