class AddMessageAndExpirationToGiftcards < ActiveRecord::Migration[5.2]
  def change
    add_column :giftcards, :message, :text
    add_column :giftcards, :expiration, :date
  end
end
