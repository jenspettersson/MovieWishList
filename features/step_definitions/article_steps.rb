Given /^I have movies titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Movie.create!(:title => title)
  end
end

