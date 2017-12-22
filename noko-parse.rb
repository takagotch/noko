require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))
#doc = Nokogiri::HTML.parse(open('http://www.yahoo.co.jp'))
#doc = NOkogiri::HTML.parse('http//www.yahoo.co.jp')
#
# parse(string_or_io, url = nil, encoding = nil,
#   options = XML::ParseOptoins::DEFAULT_HTML)
#
#doc = Nokogiri::HTML.parse('http://www.amazon.co.jp', nil, "Shift-JIS")

p doc

