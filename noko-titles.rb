require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

puts doc%'//title'
puts doc/'//title'
puts doc.at('//title')

puts doc.at('//title')

puts doc.at_xpath('//title')
puts doc.at_css('title')

puts doc.css('title')
puts doc.css('title')[o]

puts doc.at_search('title')
puts doc.at_search('title')[o]

puts doc.search('//title')

puts doc.xpath('//title')
puts doc.xpath('//title')[o]
puts doc.xpath('//title').first


