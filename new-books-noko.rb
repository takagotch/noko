require 'nokogiri'
require 'open-uri'

search_term="82837051" #30, amzn

category="466298" #it, amzn

base_url = ""
url= ""

def get_next_url(doc)
end

loop {
  doc = Nokogiri:HTML(oepn(url))
  doc.xpath().each {|element|
    puts element[:href]
    puts element.text
  }
  url = get_next_url(doc)
  break if url.nil?
}

