class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :reason
      t.string :description
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
