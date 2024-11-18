require "application_system_test_case"

class DoctorTest < ApplicationSystemTestCase
  setup do
    @doctor = doctor(:one)
  end

  test "visiting the index" do
    visit doctor_url
    assert_selector "h1", text: "Doctor"
  end

  test "should create doctor" do
    visit doctor_url
    click_on "New doctor"

    fill_in "Degree", with: @doctor.degree
    fill_in "Email", with: @doctor.email
    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "should update Doctor" do
    visit doctor_url(@doctor)
    click_on "Edit this doctor", match: :first

    fill_in "Degree", with: @doctor.degree
    fill_in "Email", with: @doctor.email
    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "should destroy Doctor" do
    visit doctor_url(@doctor)
    click_on "Destroy this doctor", match: :first

    assert_text "Doctor was successfully destroyed"
  end
end
