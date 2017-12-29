require 'nokogiri'
require 'open-uri'

class CompanyInfo
	def initialize(ticker_code)
	end
	attr_reader :name, :tickerCode, :category,
		    :unit, :recentHighPrice, :recentLowPrice,
		    :highPrice, :lowPrice, :price

	private
	def scrape_stock_info(html, index)
	end

	def get_company_info()
	end

	def get_stock_info()
	end

	def get_nokogiri_doc(url)
	end

	def scrape
	end
end

company = CompanyInfo.new("4689")
puts company.name
puts company.category
puts company.unit
puts ""+company.recentHighPrice
puts ""+company.recentLowPrice
puts ""+company.highPrice
puts ""+company.lowPrice
puts ""+company.price

