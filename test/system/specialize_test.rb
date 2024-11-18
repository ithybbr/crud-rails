require "application_system_test_case"

class SpecializeTest < ApplicationSystemTestCase
  setup do
    @specialize = specialize(:one)
  end

  test "visiting the index" do
    visit specialize_url
    assert_selector "h1", text: "Specialize"
  end

  test "should create specialize" do
    visit specialize_url
    click_on "New specialize"

    fill_in "Email", with: @specialize.email
    fill_in "Id", with: @specialize.id
    click_on "Create Specialize"

    assert_text "Specialize was successfully created"
    click_on "Back"
  end

  test "should update Specialize" do
    visit specialize_url(@specialize)
    click_on "Edit this specialize", match: :first

    fill_in "Email", with: @specialize.email
    fill_in "Id", with: @specialize.id
    click_on "Update Specialize"

    assert_text "Specialize was successfully updated"
    click_on "Back"
  end

  test "should destroy Specialize" do
    visit specialize_url(@specialize)
    click_on "Destroy this specialize", match: :first

    assert_text "Specialize was successfully destroyed"
  end
end
