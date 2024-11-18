require "application_system_test_case"

class DiseaseTest < ApplicationSystemTestCase
  setup do
    @disease = disease(:one)
  end

  test "visiting the index" do
    visit disease_url
    assert_selector "h1", text: "Disease"
  end

  test "should create disease" do
    visit disease_url
    click_on "New disease"

    fill_in "Description", with: @disease.description
    fill_in "Disease code", with: @disease.disease_code
    fill_in "Id", with: @disease.id
    fill_in "Pathogen", with: @disease.pathogen
    click_on "Create Disease"

    assert_text "Disease was successfully created"
    click_on "Back"
  end

  test "should update Disease" do
    visit disease_url(@disease)
    click_on "Edit this disease", match: :first

    fill_in "Description", with: @disease.description
    fill_in "Disease code", with: @disease.disease_code
    fill_in "Id", with: @disease.id
    fill_in "Pathogen", with: @disease.pathogen
    click_on "Update Disease"

    assert_text "Disease was successfully updated"
    click_on "Back"
  end

  test "should destroy Disease" do
    visit disease_url(@disease)
    click_on "Destroy this disease", match: :first

    assert_text "Disease was successfully destroyed"
  end
end
