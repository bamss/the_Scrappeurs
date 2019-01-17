require_relative '../lib/commune.rb'

describe "get_town_hall_email" do
    it "should return an URL" do
        expect(get_town_hall_email).to be_truthy
    end
end

describe "get_townhall_urls" do
    it "should return an array with url" do
        expect(get_townhall_urls).to be_truthy
    end
end

describe "url_email_methode" do
    it "should return an array with email" do
        expect(url_email_methode).to be_truthy
    end
end