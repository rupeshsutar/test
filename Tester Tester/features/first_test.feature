Feature: Comments

Scenario: Scroll to 5th video
 Given I am on the Home Page
 Then I wait
 Then I scroll down
 Then I scroll down
 Then I scroll down
 Then I scroll down
 Then I wait
 Then I touch list item number 1
 Then I wait
 Then I should see "Like" Button
 Then I should see "Fav" Button
 Then I should see "Back" Button
 Then I should see "Add Comment" input field
 Then I touch on screen 29 from the left and 356 from the top
 Then I enter "test"
 Then I touch "Add Comment"
 Then I should see text containing "test"
