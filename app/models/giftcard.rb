class Giftcard < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :number, presence: true, uniqueness: true, length: { minimum: 16, maximum: 16 }

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end

  def balance(transactions)
    transactions.map {|transaction| transaction["transaction_value"]}.reduce(:+)
  end

end
