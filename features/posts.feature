Feature: Posts

  Scenario: Visitor views a published posts
    Given the following post:
      | body      | This is the body of a post. You bette read it |
      | published | true                                          |
    When I am on the home page
    And I go to the blog page
    Then I should see "This is the body of a post. You bette read it"

  Scenario: Visitor views post
    Given the following post:
      | body      | This is the body of a post. You bette read it |
      | published | true                                          |
      | title     | First Post                                    |
    When I am on the home page
    And I go to the blog page
    And I follow "First Post"
    Then I should be on the first post page

  Scenario: Admin edits post, then deletes it
    Given the following post:
      | body      | This is the body of a post. You bette read it |
      | published | true                                          |
    And I am signed in
    And I go to the blog page
    And I follow "edit"
    And I fill in "post_body" with "this is the edited post"
    And I press "Update Post"
    Then I should see "this is the edited post"
    When I follow "delete"
    Then I should be on the blog page
    And I should not see "this is the edited post"

  Scenario: Visitor doesn't see unpublished posts
    Given the following post:
      | body      | This is the body of a post. You bette read it |
      | published | false                                         |
    When I am on the home page
    And I go to the blog page
    Then I should not see "This is the body of a post. You bette read it"

  Scenario: Admin adds post
    Given I am signed in
    When I follow "+ add post"
    And I fill in "post_body" with "this is a post"
    And I fill in "post_title" with "Hello post"
    And I check "publish?"
    And I press "Create Post"
    Then I should see "this is a post"

  Scenario: Non admin cannot add posts
    Given I am on the home page
    When I go to the new post page
    Then I should be on the sign in page
