require 'nokogiri'
require 'open-uri'

url = ""
doc = Nokogiri::HTML(open(url))
bid = doc.xpath().text
ask = doc.xpath().text
puts ""
puts ""

