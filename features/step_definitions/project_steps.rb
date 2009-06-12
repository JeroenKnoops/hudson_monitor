Given /^the following (.+) records?$/ do |factory,table|
  table.hashes.each do |hash|
    puts "hash #{:hash}"
    Factory(factory, hash)
  end
end