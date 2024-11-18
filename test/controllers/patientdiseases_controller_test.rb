require "test_helper"

class PatientdiseasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patientdisease = patientdiseases(:one)
  end

  test "should get index" do
    get patientdiseases_url
    assert_response :success
  end

  test "should get new" do
    get new_patientdisease_url
    assert_response :success
  end

  test "should create patientdisease" do
    assert_difference("Patientdisease.count") do
      post patientdiseases_url, params: { patientdisease: { disease_code: @patientdisease.disease_code, email: @patientdisease.email } }
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

    assert_redirected_to patientdiseases_url
  end
end
