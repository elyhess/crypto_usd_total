class CurrencyFacade
	class << self

		def get_currencies(currencies)
			create_currencies(CurrencyService.get_currencies(currencies))
		end

		private

		def create_currencies(currencies)
			currencies.map do |coin_data|
				Currency.new(coin_data)
			end
		end
	end
end