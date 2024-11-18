require "test_helper"

class DiscoverControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discover = discover(:one)
  end

  test "should get index" do
    get discover_index_url
    assert_response :success
  end

  test "should get new" do
    get new_discover_url
    assert_response :success
  end

  test "should create discover" do
    assert_difference("Discover.count") do
      post discover_index_url, params: { discover: { cname: @discover.cname, disease_code: @discover.disease_code, first_enc_date: @discover.first_enc_date } }
    end

    assert_redirected_to discover_url(Discover.last)
  end

  test "should show discover" do
    get discover_url(@discover)
    assert_response :success
  end

  test "should get edit" do
    get edit_discover_url(@discover)
    assert_response :success
  end

  test "should update discover" do
    patch discover_url(@discover), params: { discover: { cname: @discover.cname, disease_code: @discover.disease_code, first_enc_date: @discover.first_enc_date } }
    assert_redirected_to discover_url(@discover)
  end

  test "should destroy discover" do
    assert_difference("Discover.count", -1) do
      delete discover_url(@discover)
    end

    assert_redirected_to discover_index_url
  end
end
