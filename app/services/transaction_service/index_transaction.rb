module TransactionService
  class IndexTransaction < Client

    TRANSACTIONS_ENDPOINT = '/transactions'

    def index_transactions
      self.get(self.class.base_uri + TRANSACTIONS_ENDPOINT)
    end
  end
end
