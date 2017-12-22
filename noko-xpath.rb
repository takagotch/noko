require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML('http://www.hatena.ne.jp')

puts doc.xpath("/html/head/title")
puts doc.xpath("/title")

puts doc.xpath("//ul[@id='serverlist']/li[3]")
puts doc.xpath("//h2[@class='title']")

#//*[@id="actualPriceValue"]/b
#/html/body/div[2]/form/table[3]/tbody/tr/td/div/table/tbody/tr/td[2]/span/b
#$x("//title")

