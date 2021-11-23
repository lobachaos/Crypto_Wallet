class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.stirng :descryption
      t.string :password
      t.string :email
      t.int :account_budget

      t.timestamps
    end
  end
end
