require "test_helper"

describe CreateBestLoan do
  it "Sorts the best loan(s) by interest" do
    amount = Loan::MAXIMUM_AMOUNT
    rates = Lender.order(:interest).pluck :interest

    _( CreateBestLoan.from(amount).pluck :interest )
      .must_equal rates
  end

  it "is empty when amount is less than Lender#minimum_loan" do
    lowest_lender = Lender.order('minimum_loan ASC').first
    amount = lowest_lender.minimum_loan - 1

    _( CreateBestLoan.from(amount) )
      .must_be :empty?
  end
end
