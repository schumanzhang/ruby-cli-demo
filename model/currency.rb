class Currency
    attr_accessor :rank, :name, :price

    def self.new_from_scraper(data)
        currencies = data.map do |row|
            name = row[8].split[-1]
            currency = self.new(row[1], name, row[3])
            currency
        end

        currencies
    end

    def self.get_top_currencies(currencies)
        names = currencies.map do |currency|
            name = currency.name
            name
        end

        names.join(",")
    end

    def self.is_valid_currency(name, currencies)
        found = currencies.detect {|c| c.name == name}
        found
    end

    def initialize(rank, name, price)
        @rank = rank
        @name = name
        @price = price
    end 

end