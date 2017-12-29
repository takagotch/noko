require 'nokogiri'
require 'open-uri'

url = ""
doc = Nokogiri::HTML(open(url))
doc.xpath().each {|element|
  puts ""
  puts ""
  puts ""
}

