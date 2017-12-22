require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

nodesets = doc.xpath('//title')
	
	puts nodesets.text              #1
	puts nodesets.innder_text       #2
	puts nodesets.first.inner_text  #3

nodesets.each{|nodeset|
	puts nodeset.contet()           #4,!1
	puts nodeset.text               #5,!2
	puts nodeset.inner_text         #6,!3
}
