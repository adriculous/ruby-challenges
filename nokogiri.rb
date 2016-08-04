# We're gonna steal, I mean, scrap some stuff from the Martha Stewart website for sadnwiches. We're going to need the Ruby gem, Nokogiri, to scrap some sandwich recipes for us. Nokogiri ikou! (Let's go Nokogiri!)

require "nokogiri"
require "open-uri"

# Scrappin' time!
doc = Nokogiri::HTML(open(“http://www.marthastewart.com/312598/brick-pressed-sandwich”))

# Check Chrome's Inspect for the element that lists down the ingredients and search.
search = doc.css('div', 'section', 'ul')
puts search

# Class for the list of ingredients
list = doc.css('.components-list')

# looping
list.each do |n|
     puts n.inner_html
end