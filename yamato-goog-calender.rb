require 'nokogiri'
require 'net/http'
require 'google_calendar'

if ARGV.size == 1
else
end

def set_google_calendar()
end

Net::HTTP.version_1_2

url = ""
html = nil
Net::HTTP.start(url, 80) {|http|
  response = http.post()
  html     = response.body
}
if html.nil?
else
end

doc = Nokogiri::HTML() if !html.nil?
doc.xpath().each {|elemnt|
  
  day = element.xpath().text
  status = element.xpath().text
  puts day
  puts status
  set_google_calendar(number,starus,day)
}

