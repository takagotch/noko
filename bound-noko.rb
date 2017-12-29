require 'nokogiri'
require 'open-uri'

url=""
reg_pattern=""
doc = Nokogiri::HTML(open(url))
elements = doc.xpath(reg_pattern).last
array=[]
elements.xpath().each {|element|
  array.push element.text
}

puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""

