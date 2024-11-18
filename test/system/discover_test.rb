require "application_system_test_case"

class DiscoverTest < ApplicationSystemTestCase
  setup do
    @discover = discover(:one)
  end

  test "visiting the index" do
    visit discover_url
    assert_selector "h1", text: "Discover"
  end

  test "should create discover" do
    visit discover_url
    click_on "New discover"

    fill_in "Cname", with: @discover.cname
    fill_in "Disease code", with: @discover.disease_code
    fill_in "First enc date", with: @discover.first_enc_date
    click_on "Create Discover"

    assert_text "Discover was successfully created"
    click_on "Back"
  end

  test "should update Discover" do
    visit discover_url(@discover)
    click_on "Edit this discover", match: :first

    fill_in "Cname", with: @discover.cname
    fill_in "Disease code", with: @discover.disease_code
    fill_in "First enc date", with: @discover.first_enc_date
    click_on "Update Discover"

    assert_text "Discover was successfully updated"
    click_on "Back"
  end

  test "should destroy Discover" do
    visit discover_url(@discover)
    click_on "Destroy this discover", match: :first

    assert_text "Discover was successfully destroyed"
  end
end
