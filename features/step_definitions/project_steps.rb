Given /^the following (.+) records?$/ do |factory,table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

Given /^the following cc\-url '(.+)'$/ do |location|
  Project.load(location)
end

Then /^I should see "([^\"]*)" in (.+)$/ do |project,color|
  response.should have_selector("span", :class => color, :content => project)
end