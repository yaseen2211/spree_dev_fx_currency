class AddInitialValueToSpreeSales < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_sale_prices, :initial_value, :float
  end
end
