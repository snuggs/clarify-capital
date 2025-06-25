class Loan < ApplicationRecord
  MAXIMUM_AMOUNT = 5_000_000

  STATUS = [ :new, :pending, :approved, :complete, :void ]

  belongs_to :client
  belongs_to :lender

  validates :client, presence: true
  validates :lender, presence: true

  validates :amount, presence: true
  validates :start, presence: true
  validates :due, presence: true
  validates :status, presence: true

  validate :client_score
  validate :amount_request

  def interest
    lender&.interest
  end

  private

  def client_score
    return if client.nil?

    client.credit_score >= lender.minimum_credit \
      || errors.add(:client, "Must meet #{lender.name}'s #{lender.minimum_credit} minimum credit score.")
  end

  def amount_request
    return if amount.nil?

    amount > lender.minimum_loan \
      || errors.add(:amount, "Must be above #{lender.minimum_loan}")

    amount <= lender.maximum_loan \
      || errors.add(:amount, "Must be below #{Loan::MAXIMUM_AMOUNT}")
  end
end
