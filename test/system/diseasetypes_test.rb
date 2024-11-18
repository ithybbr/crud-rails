require "application_system_test_case"

class DiseasetypesTest < ApplicationSystemTestCase
  setup do
    @diseasetype = diseasetypes(:one)
  end

  test "visiting the index" do
    visit diseasetypes_url
    assert_selector "h1", text: "Diseasetypes"
  end

  test "should create diseasetype" do
    visit diseasetypes_url
    click_on "New diseasetype"

    fill_in "Description", with: @diseasetype.description
    fill_in "Id", with: @diseasetype.id
    click_on "Create Diseasetype"

    assert_text "Diseasetype was successfully created"
    click_on "Back"
  end

  test "should update Diseasetype" do
    visit diseasetype_url(@diseasetype)
    click_on "Edit this diseasetype", match: :first

    fill_in "Description", with: @diseasetype.description
    fill_in "Id", with: @diseasetype.id
    click_on "Update Diseasetype"

    assert_text "Diseasetype was successfully updated"
    click_on "Back"
  end

  test "should destroy Diseasetype" do
    visit diseasetype_url(@diseasetype)
    click_on "Destroy this diseasetype", match: :first

    assert_text "Diseasetype was successfully destroyed"
  end
end
