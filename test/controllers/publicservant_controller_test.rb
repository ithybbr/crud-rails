require "test_helper"

class PublicservantControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicservant = publicservant(:one)
  end

  test "should get index" do
    get publicservant_index_url
    assert_response :success
  end

  test "should get new" do
    get new_publicservant_url
    assert_response :success
  end

  test "should create publicservant" do
    assert_difference("Publicservant.count") do
      post publicservant_index_url, params: { publicservant: { department: @publicservant.department, email: @publicservant.email } }
    end

    assert_redirected_to publicservant_url(Publicservant.last)
  end

  test "should show publicservant" do
    get publicservant_url(@publicservant)
    assert_response :success
  end

  test "should get edit" do
    get edit_publicservant_url(@publicservant)
    assert_response :success
  end

  test "should update publicservant" do
    patch publicservant_url(@publicservant), params: { publicservant: { department: @publicservant.department, email: @publicservant.email } }
    assert_redirected_to publicservant_url(@publicservant)
  end

  test "should destroy publicservant" do
    assert_difference("Publicservant.count", -1) do
      delete publicservant_url(@publicservant)
    end

    assert_redirected_to publicservant_index_url
  end
end
