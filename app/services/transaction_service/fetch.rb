module TransactionService
  class Fetch < Client

    TRANSACTIONS_ENDPOINT = '/transactions'
    attr_reader :transactions

    def initialize
      @transactions = []
    end

    def call
      @transactions = self.get(self.class.base_uri + TRANSACTIONS_ENDPOINT)
    end
  end
end
