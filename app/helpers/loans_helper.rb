module LoansHelper
  def lender_with_minimum lender
    "#{ lender.name } [Score: #{lender.minimum_credit}] @ #{percentage_from lender.interest } (with #{ number_with_delimiter( lender.minimum_loan )} minimum)"
  end

  def percentage_from rate
    "#{rate * 100}%"
  end
end
