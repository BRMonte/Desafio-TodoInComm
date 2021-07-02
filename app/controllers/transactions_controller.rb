class TransactionsController < ApplicationController

  before_action :authenticate_giftcard!

  def index
    client = TransactionService::Fetch.new
    client.call
    @transactions = client.transactions
    @balance = current_giftcard.balance(@transactions)
  end
end
