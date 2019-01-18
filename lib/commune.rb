require 'nokogiri'
require 'open-uri'


# Récupère l'adresse email, qui prend en parametre le liens de la page de la mairie 
def get_town_hall_email(town_hall_urls)
    doc = Nokogiri::HTML(open(town_hall_urls))
    doc.xpath('//tbody/tr[4]/td[2]').each do |v|
   return   v.text
 
 end
 
 end
 

#recuper
def get_townhall_urls
    doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
    @url_communes = []
    doc.xpath('//tr[2]//p//a/@href').each do |node|
         @url_communes.push(node.text)
        
    end
    return @result = @url_communes.map {|c| c.gsub('./', 'http://annuaire-des-mairies.com/')}
  
end

#récupère les mails des mairies

def url_email_methode #urls_des_mairies
  email=[]
  n = get_townhall_urls.count
  i = 0
  #on n'a fait une Boucle qui parcours chaque url avec le get_towhall_urls
  # et qui récupère un a un chaque mail qu'on envoie dans le array email avec la variable x
  while i < n
    doc = Nokogiri::HTML(open("#{get_townhall_urls[i]}"))
    doc.xpath('//section[2]/div/table/tbody/tr[4]/td[2]').map do |x|
       email.push(x.text)
    end
    p email[i]
         i += 1
  end
end

p url_email_methode
 
