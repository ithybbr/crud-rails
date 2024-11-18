require "application_system_test_case"

class PublicservantTest < ApplicationSystemTestCase
  setup do
    @publicservant = publicservant(:one)
  end

  test "visiting the index" do
    visit publicservant_url
    assert_selector "h1", text: "Publicservant"
  end

  test "should create publicservant" do
    visit publicservant_url
    click_on "New publicservant"

    fill_in "Department", with: @publicservant.department
    fill_in "Email", with: @publicservant.email
    click_on "Create Publicservant"

    assert_text "Publicservant was successfully created"
    click_on "Back"
  end

  test "should update Publicservant" do
    visit publicservant_url(@publicservant)
    click_on "Edit this publicservant", match: :first

    fill_in "Department", with: @publicservant.department
    fill_in "Email", with: @publicservant.email
    click_on "Update Publicservant"

    assert_text "Publicservant was successfully updated"
    click_on "Back"
  end

  test "should destroy Publicservant" do
    visit publicservant_url(@publicservant)
    click_on "Destroy this publicservant", match: :first

    assert_text "Publicservant was successfully destroyed"
  end
end
