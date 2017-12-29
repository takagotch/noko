require 'nokogiri'
require 'open-uri'

def get_nokogiri_doc(url)
end

def has_next_page?(doc)
end

def get_daily_data(doc)
end

code="4689"

day=Time.now
ey=day.year
em=day.month
ed=day.day
start_url=""
num=1
puts ""
loop {
  url = ""
  doc = get_nokogiri_doc(url)
  get_daily_data(doc)
  break if !has_next_page?(doc)
  num = num+1
}

