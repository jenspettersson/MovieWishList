Given /^I have movies titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Movie.create!(:title => title)
  end
end

Given /^I have no movies$/ do
  Movie.delete_all
end

#How to add pluralized regexp so I don't need two steps?
Then /^I should have (\d+) movie$/ do |count|
  Movie.count.should == count.to_i
end

Then /^I should have (\d+) movies$/ do |count|
  Movie.count.should == count.to_i
end

Given /^I have a movie titled "([^"]*)"$/ do |title|
  Movie.create!(:title => title)
end

Given /^I have the following movies$/ do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

