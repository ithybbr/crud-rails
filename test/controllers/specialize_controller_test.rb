require "test_helper"

class SpecializeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialize = specialize(:one)
  end

  test "should get index" do
    get specialize_index_url
    assert_response :success
  end

  test "should get new" do
    get new_specialize_url
    assert_response :success
  end

  test "should create specialize" do
    assert_difference("Specialize.count") do
      post specialize_index_url, params: { specialize: { email: @specialize.email, id: @specialize.id } }
    end

    assert_redirected_to specialize_url(Specialize.last)
  end

  test "should show specialize" do
    get specialize_url(@specialize)
    assert_response :success
  end

  test "should get edit" do
    get edit_specialize_url(@specialize)
    assert_response :success
  end

  test "should update specialize" do
    patch specialize_url(@specialize), params: { specialize: { email: @specialize.email, id: @specialize.id } }
    assert_redirected_to specialize_url(@specialize)
  end

  test "should destroy specialize" do
    assert_difference("Specialize.count", -1) do
      delete specialize_url(@specialize)
    end

    assert_redirected_to specialize_index_url
  end
end
