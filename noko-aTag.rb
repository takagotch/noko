require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

nodesets = doc.xpath('//a')
	puts nodesets.inner_text #1

nodesets.each{|node|
	puts node.inner_tex      #1'
}

