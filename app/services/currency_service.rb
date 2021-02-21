class CurrencyService
	class << self

		def get_currencies(currencies)
			response = conn.get("/api/v3/coins/markets?ids=#{currencies}")
			parse(response)
		end

		private

		def conn
			Faraday.new(url: "https://api.coingecko.com") do |faraday|
				faraday.params['vs_currency'] = "usd"
			end
		end

		def parse(response)
			JSON.parse(response.body, symbolize_names: true)
		end

	end
end