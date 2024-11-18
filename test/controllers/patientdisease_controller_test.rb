require "test_helper"

class PatientdiseaseControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patientdisease = patientdisease(:one)
  end

  test "should get index" do
    get patientdisease_index_url
    assert_response :success
  end

  test "should get new" do
    get new_patientdisease_url
    assert_response :success
  end

  test "should create patientdisease" do
    assert_difference("Patientdisease.count") do
      post patientdisease_index_url, params: { patientdisease: { disease_code: @patientdisease.disease_code, email: @patientdisease.email } }
    end

    assert_redirected_to patientdisease_url(Patientdisease.last)
  end

  test "should show patientdisease" do
    get patientdisease_url(@patientdisease)
    assert_response :success
  end

  test "should get edit" do
    get edit_patientdisease_url(@patientdisease)
    assert_response :success
  end

  test "should update patientdisease" do
    patch patientdisease_url(@patientdisease), params: { patientdisease: { disease_code: @patientdisease.disease_code, email: @patientdisease.email } }
    assert_redirected_to patientdisease_url(@patientdisease)
  end

  test "should destroy patientdisease" do
    assert_difference("Patientdisease.count", -1) do
      delete patientdisease_url(@patientdisease)
    end

    assert_redirected_to patientdisease_index_url
  end
end
