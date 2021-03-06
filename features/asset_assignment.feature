Feature: Assign (formerly checkout) asset to a user
  In order to manage inventory
  As an admin
  I want to assign assets to users

  Scenario: Admin can view checkouts
    Given I am on the home page
     When I follow "Checkouts"
     Then I should see "Listing checkouts"

  Scenario: Admin can create new checkouts
    Given a user exists with name: "michael.jordan"
    Given a asset exists with name: "shoes", quantity: 1
    Given I am on the new checkout page
     When I select "michael.jordan" from "User"
      And I select "shoes" from "Asset"
      And I fill in "Quantity" with "1" 
      And press "Save"
      Then I should see "Listing checkouts"

  Scenario: Admin can view individual checkouts
    Given a user exists with name: "michael.jordan"
    Given a asset exists with name: "shoes", quantity: 1
    Given I am on the new checkout page
     Given I select "michael.jordan" from "User"
      And I select "shoes" from "Asset"
      And I fill in "Quantity" with "1" 
      And press "Save"
      Then I should see "Listing checkouts"
      And I follow "Mar 4"
      Then I should see "Assignment History"

  Scenario: Admin can edit checkouts
    Given a user exists with name: "michael.jordan"
    Given a asset exists with name: "shoes", quantity: 1
    Given I am on the new checkout page
     Given I select "michael.jordan" from "User"
      And I select "shoes" from "Asset"
      And I fill in "Quantity" with "1" 
      And press "Save"
      Then I should see "Listing checkouts"
      And I follow "Edit"
      Then I should see "Editing checkout"

  Scenario: Admin can delete checkouts
    Given a user exists with name: "michael.jordan"
    Given a asset exists with name: "shoes", quantity: 1
    Given I am on the new checkout page
     Given I select "michael.jordan" from "User"
      And I select "shoes" from "Asset"
      And I fill in "Quantity" with "1" 
      And press "Save"
      Then I should see "Listing checkouts"
      And I follow "Destroy"
      Then I should see "Listing checkout"
