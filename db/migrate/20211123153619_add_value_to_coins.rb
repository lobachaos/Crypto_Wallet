class AddValueToCoins < ActiveRecord::Migration[6.1]
  def change
    add_column :coins, :value, :bigint
  end
end
