class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type
      t.integer :value
      t.string :date
      t.string :store
      t.references :giftcard, foreign_key: true

      t.timestamps
    end
  end
end
