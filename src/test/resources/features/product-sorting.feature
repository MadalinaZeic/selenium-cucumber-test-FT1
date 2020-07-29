Feature: Products sorting
  As a customer
  I want to sort products
  So that I can easily find what I need
  hue hue

  Scenario Outline: Sort products by different criteria hue
    Given I open the homepage
    And I search products by "<keyword>"
    When I select the option "<sort criteria>" in the Sort By list
    And I sort the products in <sort direction> direction
    Then the products are ordered by price in <sort direction> order

    Examples:
      | keyword      | sort criteria | sort direction |
      | new arrivals | Price         | descending     |
      | shirt        | Name          | ascending      |