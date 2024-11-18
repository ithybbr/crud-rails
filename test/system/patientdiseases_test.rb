require "application_system_test_case"

class PatientdiseasesTest < ApplicationSystemTestCase
  setup do
    @patientdisease = patientdiseases(:one)
  end

  test "visiting the index" do
    visit patientdiseases_url
    assert_selector "h1", text: "Patientdiseases"
  end

  test "should create patientdisease" do
    visit patientdiseases_url
    click_on "New patientdisease"

    fill_in "Disease code", with: @patientdisease.disease_code
    fill_in "Email", with: @patientdisease.email
    click_on "Create Patientdisease"

    assert_text "Patientdisease was successfully created"
    click_on "Back"
  end

  test "should update Patientdisease" do
    visit patientdisease_url(@patientdisease)
    click_on "Edit this patientdisease", match: :first

    fill_in "Disease code", with: @patientdisease.disease_code
    fill_in "Email", with: @patientdisease.email
    click_on "Update Patientdisease"

    assert_text "Patientdisease was successfully updated"
    click_on "Back"
  end

  test "should destroy Patientdisease" do
    visit patientdisease_url(@patientdisease)
    click_on "Destroy this patientdisease", match: :first

    assert_text "Patientdisease was successfully destroyed"
  end
end
