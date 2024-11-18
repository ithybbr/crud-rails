require "test_helper"

class DiseasetypeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diseasetype = diseasetype(:one)
  end

  test "should get index" do
    get diseasetype_index_url
    assert_response :success
  end

  test "should get new" do
    get new_diseasetype_url
    assert_response :success
  end

  test "should create diseasetype" do
    assert_difference("Diseasetype.count") do
      post diseasetype_index_url, params: { diseasetype: { description: @diseasetype.description, id: @diseasetype.id } }
    end

    assert_redirected_to diseasetype_url(Diseasetype.last)
  end

  test "should show diseasetype" do
    get diseasetype_url(@diseasetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_diseasetype_url(@diseasetype)
    assert_response :success
  end

  test "should update diseasetype" do
    patch diseasetype_url(@diseasetype), params: { diseasetype: { description: @diseasetype.description, id: @diseasetype.id } }
    assert_redirected_to diseasetype_url(@diseasetype)
  end

  test "should destroy diseasetype" do
    assert_difference("Diseasetype.count", -1) do
      delete diseasetype_url(@diseasetype)
    end

    assert_redirected_to diseasetype_index_url
  end
end
