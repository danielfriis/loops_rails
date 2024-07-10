# frozen_string_literal: true

require "test_helper"

class TestContacts < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_create_contact
    VCR.use_cassette("create_contact") do
      response = @client.contacts.create(email: "john@example.com", firstName: "John", lastName: "Doe")
      assert_equal true, response["success"]
      assert response.key?("id"), "Response should contain 'id'"
    end
  end

  def test_update_contact
    VCR.use_cassette("update_contact") do
      response = @client.contacts.update(email: "john@example.com", firstName: "Johnny")
      assert_equal true, response["success"]
      assert response.key?("id"), "Response should contain 'id'"
    end
  end

  def test_find_contact_by_email
    VCR.use_cassette("find_contact_by_email") do
      response = @client.contacts.find(email: "john@example.com")
      assert response.is_a?(Array), "Response should be an array of contacts"
    end
  end

  def test_find_contact_by_user_id
    VCR.use_cassette("find_contact_by_user_id") do
      response = @client.contacts.find(user_id: "12345")
      assert response.is_a?(Array), "Response should be an array of contacts"
    end
  end

  def test_delete_contact
    VCR.use_cassette("delete_contact") do
      response = @client.contacts.delete(email: "john@example.com")
      assert_equal true, response["success"]
      assert_equal "Contact deleted.", response["message"]
    end
  end
end
