class APIClient

    def self.get_historical_price(name, date)
        uri = URI("https://api.coingecko.com/api/v3/coins/#{name}/history?date=#{date}")
        begin 
            res = Net::HTTP.get_response(uri)
            JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
        rescue StandardError
            puts "received an error from the API"
        end
    end

    def self.get_current_price(name)
        uri = URI("https://api.coingecko.com/api/v3/coins/#{name}")
        begin 
            res = Net::HTTP.get_response(uri)
            JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
        rescue StandardError
            puts "received an error from the API"
        end
    end
    
end