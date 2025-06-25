require "test_helper"

describe ClientsController do
  let(:client) { clients(:one) }

  it "should get index" do
    get clients_url
    must_respond_with :success
  end

  it "should get new" do
    get new_client_url
    must_respond_with :success
  end

  it "should create client" do
    assert_difference("Client.count") do
      post clients_url, params: { client: { credit_score: @client.credit_score, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, phone: @client.phone } }
    end

    must_redirect_to client_url(Client.last)
  end

  it "should show client" do
    get client_url(@client)
    must_respond_with :success
  end

  it "should get edit" do
    get edit_client_url(@client)
    must_respond_with :success
  end

  it "should update client" do
    patch client_url(@client), params: { client: { credit_score: @client.credit_score, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, phone: @client.phone } }
    must_redirect_to client_url(@client)
  end

  it "should destroy client" do
    assert_difference("Client.count", -1) do
      delete client_url(@client)
    end

    must_redirect_to clients_url
  end
end
