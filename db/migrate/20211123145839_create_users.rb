class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :descryption
      t.string :password
      t.string :email
      t.bigint :account_budget

      t.timestamps
    end
  end
end
