require 'nokogiri'
require 'open-uri'

url = "http://info.finance.yahoo.co.jp/fx/marketcalendar/"
doc = Nokogiri::HTML(open(url))
doc.xpath("//div[@class='ecoEventTbl02 marB20']/table/tr").each {|element|
	puts "event:       #{element.xpath(".//td[@class='event']").text}"
	puts "expectation: #{element.xpath(".//td[@class='expectation']").text}"
	puts "result:      #{element.xpath(".//td[@class='result'].text").text}"
}

