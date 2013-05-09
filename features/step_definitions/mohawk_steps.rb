When /^we are using the "(.*?)"$/ do |expected_screen|
  @screen = on(expected_screen.to_class)
end

Then /^the window should exist$/ do
  @screen.should exist
end

Then /^we know that the window is active$/ do
  @screen.should be_active
end

Then /^we can confirm the window has the text "(.*?)"$/ do |what_text|   
  @screen.should have_text(what_text)
end                                                                 

Then /^we can wait for the control with a value of "(.*?)"$/ do |value|   
  @screen.wait_for_control :value => value
end

Then /^our parent is the container, not the main window$/ do
  @screen.adapter.window.title.should_not match(/MainForm/)
end