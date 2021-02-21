class PortfoliosFacade
	class << self

		def grand_total(portfolios, currencies)
			portfolios.sum do |portfolio|
				total_value = currencies.sum do |currency|
					portfolio.total_coin_value(currency)
				end
				portfolio.update(total: total_value)
				total_value
			end
		end

	end
end