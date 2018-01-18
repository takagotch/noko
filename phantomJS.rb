require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

class Scrape
  include Capybara::DSL

  def initialize()
    Capybara.register_driver :poltergeist_debug do |app|
      Capybara::Poltergist::Driver.new(app, :inspector => true)
    end

    Capybara.default_driver = :poltergeitst
    Capybara.javascript_driver = :poltergeist
  end

  def visit_site
    page.driver.headers
    page.driver.headers = { "User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/37.36"}
    page.driver.headers
    visit('http://www.yahoo.co.jp')
    page.save_screenshot('screenshot.png', :full => true)
    doc = Nokogiri::HTML.parse(page.html)
    puts doc.title
  end
end

scrape = Scrape.new
scrape.visit_site

