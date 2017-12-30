require 'nokogiri'
require 'open-uri'

class CompanyInfo
	def initialize(ticker_code)
	  @baseUrl = "http://stock.finance.yahoo.co.jp/stocks"
	  @tickerCode = ticker_code
	  scrape
	end
	attr_reader :name, :tickerCode, :category,
		    :unit, :recentHighPrice, :recentLowPrice,
		    :highPrice, :lowPrice, :price

	private
	def scrape_stock_info(html, index)
	  get_content(										html, "dd", "ymuiEditLink maro", index, "/strong").delete(",")
	end

	def get_company_info()
	  url = "#{@baseUrl}/profile/?code=#{@tickerCode}"
	  doc = get_nokogiri_doc(url)
	  @name = doc.xpath("//th[@class='symbol']/h1").text
	  @category =
		  doc.xpath("//table[@class='boardFinCom mar86']/tr[6]/td").text
	  @unit = doc.xpath(
		  "//table[@class='boardFinCom mar86']/tr[13]/td").text
	end

	def get_stock_info()
	  url = "#{baseUrl}/detail/?code=#{@tickerCode}"
	  doc = get_nokogiri_doc(url)
	  @recentHighPrice = 
	    doc.xpath(
	      "//div[11]/dl/dd[@class='ymuiEditLink maro']/strong").text
	  @recentLowPrice = 
	    doc.xpath(
	      "//div[12]/dl/dd[@class='ymuiEditLink maro']/strong").text
	  @highPrice =
	    doc.xpath("//div[@class='innerDate']
	      /div[3]/dl/dd[@class='ymuiEditLink maro']
	      /strong").text
	  @lowPrice =
	    doc.xpath("//div[@class='innerDate']
              /div[4]/dl/dd[@class='ymuiEditLink maro']
	        /strong").text
	  @price = doc.xpath("//td[@class='stockPrice']").text
	end

	def get_nokogiri_doc(url)
	  begin
	    html = open(url)
	  rescue OpenURI::HTTPError
	    return
	  end
	  Nokogiri::HTML(html.read, nil, 'utf-8')
	end

	def scrape
	  get_company_info
	  get_stock_info
	end
end

company = CompanyInfo.new("4689")
puts company.name
puts company.category
puts company.unit
puts "high /year"+company.recentHighPrice
puts "low /year"+company.recentLowPrice
puts "high"+company.highPrice
puts "low"+company.lowPrice
puts "stock price"+company.price

