class BankDetail < ApplicationRecord
  belongs_to :user
  validates :bank_name, presence: true
  validates :iban, presence: true, uniqueness: true
  validates :branch_code, presence: true
  validates :bank_code, presence: true
  validates :account_number, presence: true, uniqueness: true
  validates :key, presence: true
end
