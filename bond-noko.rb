require 'nokogiri'
require 'open-uri'

url="http://www.mod.co.jp/jgbs/reference/interest_rate/jgbcm.htm"
reg_pattern="//*[@id='index']/tbody/tr/td/ul/table[3]/tbody/tr"
doc = Nokogiri::HTML(open(url))
elements = doc.xpath(reg_pattern).last
array=[]
elements.xpath("td").each {|element|
  array.push element.text
}

puts "base: #{array[0]}"
puts "1year: #{array[1]}"
puts "2year: #{array[2]}"
puts "3year: #{array[3]}"
puts "4year: #{array[4]}"
puts "5year: #{array[5]}"
puts "6year: #{array[6]}"
puts "7year: #{array[7]}"
puts "8year: #{array[8]}"
puts "9year: #{array[9]}"
puts "10year: #{array[10]}"
puts "15year: #{array[11]}"
puts "20year: #{array[12]}"
puts "25year: #{array[13]}"
puts "30year: #{array[14]}"
puts "40year: #{array[15]}"

