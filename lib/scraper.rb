require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN").strip
doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G") 

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name

courses.each do |course|
  puts course.text.strip
end 


# Next, we'll use the Nokogiri::HTML method to take the string of HTML returned by open-uri's open method and convert it into a NodeSet (aka, a bunch of nested "nodes") that we can easily play around with.
# Nested nodes refers to any tree of elements in which parent elements branch off to contain children elements. In fact, we've seen similarly nested structures before when we dealt with nested data structures like hashes. 
# By creating a nested structure, Nokogiri allows us to do things like iterate over a collection of elements from the HTML document and use brackets,[], and dot notation to access elements within the nested structure.


# In general adding .strip to the end will allow us to clean up the extra whitespace and simply return the text contained inside the element.