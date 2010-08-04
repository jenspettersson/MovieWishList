Given /^I have movies titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Movie.create!(:title => title)
  end
end

Given /^I have no movies$/ do
  Movie.delete_all
end

Then /^I should have (\d+) movies?$/ do |count|
  Movie.count.should == count.to_i
end

Given /^I have a movie titled "([^"]*)"$/ do |title|
  Movie.create!(:title => title)
end

Given /^I have the following movies?$/ do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Given /^I am editing movie with id (\d+)$/ do |id|
  visit edit_movie_path(id)
end

Given /^I am editing the movie titled "([^"]*)"$/ do |title|
  movie = Movie.find_by_title(title)
  visit edit_movie_path(movie)
end

