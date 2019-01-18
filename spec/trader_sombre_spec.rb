require_relative '../lib/trader_sombre.rb'

describe "my_billion_crypto" do
    it "should return an array" do
        expect(my_billion_crypto).to be_truthy
        expect(my_billion_crypto).to have_at_least(50).items
    end
end
