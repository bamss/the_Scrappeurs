require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/"



def my_billion_crypto
#recupère le nom des cryptos qu'on stocke dans coins
page = Nokogiri::HTML(open(PAGE_URL))
coins = []
page.xpath('//tr/td[3]').each do |node|
    puts node.text
    coins.push(node.text)
 end
 #recupère le cours des cruptos qu'on stocke dans Values
 values = []
 page.xpath('//td/a[@class="price"]').each do |node|
   puts node.text
  values.push(node.text)
 end
 # là on crée un tableau de hash avec les arrays coins et values
 trader = Hash[coins.zip(values)]
 p trader

end
