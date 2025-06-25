require "application_system_test_case"

describe "Loans", :system do
  let(:loan) { loans(:one) }

  it "visits the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  it "creates a Loan" do
    visit loans_url
    click_on "New loan"

    fill_in "Amount", with: @loan.amount
    fill_in "Client", with: @loan.client_id
    fill_in "Due", with: @loan.due
    fill_in "Lender", with: @loan.lender_id
    fill_in "Start", with: @loan.start
    fill_in "Status", with: @loan.status
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  it "updates a Loan" do
    visit loan_url(@loan)
    click_on "Edit this loan", match: :first

    fill_in "Amount", with: @loan.amount
    fill_in "Client", with: @loan.client_id
    fill_in "Due", with: @loan.due
    fill_in "Lender", with: @loan.lender_id
    fill_in "Start", with: @loan.start
    fill_in "Status", with: @loan.status
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  it "destroys a Loan" do
    visit loan_url(@loan)
    click_on "Destroy this loan", match: :first

    assert_text "Loan was successfully destroyed"
  end
end
