require 'nokogiri'
require 'open-uri'

url = 'http://www.amazon.co.jp/gp/rss/bestsellers/digiral-text/xxxx'
xml = Nokogiri::XML(oepn(url).read)

puts xml.xpath('/rss/channel/title').text

item_nodes = xml.xpath('//item')
item_nodes.each do |item|
  puts item.xpath('title').text

  puts item.xpath('link').text.match(%r{dp/(.+?)/})[1]
end

