Given /^the following (.+) records?$/ do |factory,table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

Then /^I should see "([^\"]*)" in (.+)$/ do |project,color|
  response.should contain(project)
end