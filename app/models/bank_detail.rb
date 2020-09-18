class BankDetail < ApplicationRecord
  belongs_to :user
  validates :bank_name, presence: true
  validates :iban, presence: true, uniqueness: true, length: {in: 27..33}, format: { with: /\AFR[a-zA-Z0-9]{2}\s?([0-9]{4}\s?){2}([0-9]{2})([a-zA-Z0-9]{2}\s?)([a-zA-Z0-9]{4}\s?){2}([a-zA-Z0-9]{1})([0-9]{2})\s?+\z/ }
  validates :branch_code, presence: true, length: {is: 5}
  validates :bank_code, presence: true, length: {is: 5}
  validates :account_number, presence: true, uniqueness: true, length: {is: 11}
  validates :key, presence: true, length: {is: 2}
end
