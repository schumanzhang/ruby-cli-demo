class Scraper

    def self.get_top_currencies
        url = "https://coinmarketcap.com/"
        html = open(url)

        doc = Nokogiri::HTML(html)

        table = doc.css("table.cmc-table").first

        table_body = table.css("tbody")

        rows = table_body.css('tr')[0, 10]

        rows_text_value = rows.map do |row|

            row_values = row.css('td').map(&:text)

            row_values
        end

        currencies = Currency.new_from_scraper(rows_text_value)
        currencies
    end
end