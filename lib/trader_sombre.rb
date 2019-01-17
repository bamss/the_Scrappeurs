require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/"



def my_billion_crypto

page = Nokogiri::HTML(open(PAGE_URL))
coins = []
page.xpath('//tr/td[3]').each do |node|
    puts node.text
    coins.push(node.text)
 end
 
 values = []
 page.xpath('//td/a[@class="price"]').each do |node|
   puts node.text
  values.push(node.text)
 end
 
 trader = Hash[coins.zip(values)]
 p trader

end