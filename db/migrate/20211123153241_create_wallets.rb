class CreateWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :wallets do |t|
      t.string :descryption
      t.bigint :wallet_budget
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
