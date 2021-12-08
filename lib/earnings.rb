class Earnings

    def self.calculate_earnings(past_price, current_price, amount)
        multiple = current_price.to_f / past_price.to_f

        earnings = amount * multiple
        earnings
    end
    
end