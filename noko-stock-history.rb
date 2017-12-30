require 'nokogiri'
require 'open-uri'

def get_nokogiri_doc(url)
  begin
    html = open(url)
  rescue OpenURI::HTTPError
    return 
  end
  Nokogiri::HTML(html.read, nil, 'utf-8')
end

def has_next_page?(doc)
  doc.xpath("//*[@id='main']/ul/a").each {|element|
    return true if element.text == "next"
  }
  return false
end

def get_daily_data(doc)
  doc.xpath(
    "table[@class='boardFin yjSt marB6']tr").each {|element|
    
    if element.children[0].text !=
      "day" && element.children[1][:class] != ""
      
	    day = element.children[0].text

	    open_price = element.children[1].text

	    hight_price = element.children[2].text
	    
	    low_price = element.children[3].text
	    
	    closing_price = element.children[4].text
	    
	    volume =element.children[5].text.gsub(/,/,'')

	    puts "#{day}, #{open_price}, #{hight_price},
	      #{low_price}, #{closing_price}, #{volume}"
    end
  }
end

code="4689"

day=Time.now
ey=day.year
em=day.month
ed=day.day
start_url="http://info.finance.yahoo.co.jp/histroy
/?sy=1900&sm=1&ey=#{ey}&em=#{em}&ed=#{ed}&tm=
d&code=#{code}"
num=1
puts ""
loop {
  url = "#{start_url}&p=#{num}"
  doc = get_nokogiri_doc(url)
  get_daily_data(doc)
  break if !has_next_page?(doc)
  num = num+1
}

