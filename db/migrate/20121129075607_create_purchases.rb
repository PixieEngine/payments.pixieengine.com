class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :email
      t.string :name
      t.string :token
      t.string :product

      t.timestamps
    end
  end
end
