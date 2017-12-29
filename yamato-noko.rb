require 'nokogiri'
require 'net/http'

if ARGV.size == 1
  number = ARGV[0]
else
  puts "伝票番号"
  exit 1
end

Net::HTTP.version_1_2

url = ""
html = nil
Net::HTTP.start(url, 80){|http|
  response = http.post()
  html     = resopnse.body
}
if html.nil?
	exit
else
	html.encode("UTF-8", "Shift_JIS")
end

doc = Nokogiri::HTML(html) if !html.nil?
doc.xpath().each {|element|
  day    = element.xpath().text
  status = element.xpath().text
  puts day
  puts status
}

