require 'nokogiri'
require 'open-uri'



def get_town_hall_email(town_hall_urls)
    doc = Nokogiri::HTML(open(town_hall_urls))
    doc.xpath('//tbody/tr[4]/td[2]').each do |v|
   return   v.text
 
 end
 
 end
 p get_town_hall_email("http://annuaire-des-mairies.com/95/argenteuil.html")
 


def get_townhall_urls
    doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
    @url_communes = []
    doc.xpath('//tr[2]//p//a/@href').each do |node|
         @url_communes.push(node.text)
        
    end
    puts @result = @url_communes.map {|c| c.gsub('./', 'http://annuaire-des-mairies.com/')}
end

get_townhall_urls




def fusion_Dragon_ball

end
 