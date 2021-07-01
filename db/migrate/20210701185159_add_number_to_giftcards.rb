class AddNumberToGiftcards < ActiveRecord::Migration[5.2]
  def change
    add_column :giftcards, :number, :string
  end
end
