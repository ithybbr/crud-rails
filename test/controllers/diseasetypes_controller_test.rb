require "test_helper"

class DiseasetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diseasetype = diseasetypes(:one)
  end

  test "should get index" do
    get diseasetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_diseasetype_url
    assert_response :success
  end

  test "should create diseasetype" do
    assert_difference("Diseasetype.count") do
      post diseasetypes_url, params: { diseasetype: { description: @diseasetype.description, id: @diseasetype.id } }
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

    assert_redirected_to diseasetypes_url
  end
end
