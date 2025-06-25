class Lender < ApplicationRecord
  MINIMUM_RATE = 0.060 # based off Clarify Capital site
  
  has_many :clients, through: :loans
  has_many :loans

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

  validate :minimum_interest_rate

  def self.minimum_loan
    order(:minimum_loan)
      .pluck(:minimum_loan).first
  end

  private

  def minimum_interest_rate
    interest >= Lender::MINIMUM_RATE \
      || errors.add( :interest, "Must be at least #{Lender::MINIMUM_RATE}" )
  end
end
