Spree::SalePrice.class_eval do
  before_create :set_initial_value
  after_create :update_prices

  def update_prices
    Spree::FxRate.all.each { |r| r.update_sale_price(self) }
  end

  def set_initial_value
    # this is to remember the first value as fx rate keeps changing 'value column'
    self.initial_value = self.value # this is not used anymore
  end
end
