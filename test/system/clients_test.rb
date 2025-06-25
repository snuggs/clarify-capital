require "application_system_test_case"

describe "Clients", :system do
  let(:client) { clients(:one) }

  it "visits the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  it "creates a Client" do
    visit clients_url
    click_on "New client"

    fill_in "Credit score", with: @client.credit_score
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last name", with: @client.last_name
    fill_in "Phone", with: @client.phone
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  it "updates a Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "Credit score", with: @client.credit_score
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last name", with: @client.last_name
    fill_in "Phone", with: @client.phone
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  it "destroys a Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
