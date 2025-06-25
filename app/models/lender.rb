class Lender < ApplicationRecord
  has_many :clients, through: :loans

  validates :name, presence: true

  validates :minimum_loan,
    numericality: { greater_than: 500 },
    allow_nil: false

  validates :maximum_loan,
    numericality: { less_than_or_equal_to: Loan::MAXIMUM_AMOUNT },
    allow_nil: false

  validates :minimum_credit,
    numericality: { greater_than: 500 },
    allow_nil: false

  def self.minimum_loan
    order(:minimum_loan)
      .pluck(:minimum_loan).first
  end
end
