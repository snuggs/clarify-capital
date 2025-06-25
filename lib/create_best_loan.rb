class CreateBestLoan
  def self.from amount

    lenders = Lender.where 'minimum_loan <= ?', amount

    lenders.sort_by &:interest
  end
end
