module TransactionService
  class Client
    include HTTParty

    def get(path)
      response = self.class.get(path, opts)
    end

    def self.base_uri
      'https://133b8793-d9dc-47b1-b2fe-4831f8859a7b.mock.pstmn.io//api/v1/gift-card'
    end

    private

    def opts
      opts = {}
      opts[:headers] = {
        'Accept' => 'application/json',
        'x-api-key' => api_key
      }
      opts
    end

    def api_key
        ENV['TRANSACTIONS_API_KEY']
    end

  end
end
