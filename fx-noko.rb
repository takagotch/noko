require 'nokogiri'
require 'open-uri'

url = "http://info.finance.yahoo.co.jp/fx/detail/?code=USDJPY=FX/"
doc = Nokogiri::HTML(open(url))
bid = doc.xpath(//*[@id='USDJPY_detail_bid']).text
ask = doc.xpath(//*[@id='USDJPY_detail_ask']).text
puts "Bid(bid): #{bid}"
puts "Ask(ask): #{ask}"

