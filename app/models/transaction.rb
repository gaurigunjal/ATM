class Transaction < ApplicationRecord
  belongs_to :account

  TRANSACTION_TYPES = ["Deposit","Withdraw"]

  validates :transaction_type, presence: true, inclusion: { in: TRANSACTION_TYPES}
  validates :account, presence: true
  validates :amount, presence: true, numericality: true 

end
