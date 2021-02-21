class Currency
  attr_reader :name, :price

  def initialize(data)
    @name = data[:id]
    @price = data[:current_price]
  end
end