Given(/^I am on the Home Page$/) do
 check_element_exists("view")
end

Then(/^I should see "Like" Button$/) do 
 check_element_exists("* marked: 'Like'")
 sleep(STEP_PAUSE)
end

Then(/^I should see "Fav" Button$/) do 
 check_element_exists("* marked: 'Fav'")
 sleep(STEP_PAUSE)
end

Then(/^I should see "Back" Button$/) do 
 check_element_exists("* marked: 'Back'")
 sleep(STEP_PAUSE)
end

Then(/^I should see "Add Comment" input field$/) do 
 check_element_exists("* marked: 'Add Comment'")
end

Then(/^I enter "test"$/) do 
 keyboard_enter_text("test")
 sleep(STEP_PAUSE)
end
