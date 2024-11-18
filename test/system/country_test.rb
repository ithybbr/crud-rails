require "application_system_test_case"

class CountryTest < ApplicationSystemTestCase
  setup do
    @country = country(:one)
  end

  test "visiting the index" do
    visit country_url
    assert_selector "h1", text: "Country"
  end

  test "should create country" do
    visit country_url
    click_on "New country"

    fill_in "Cname", with: @country.cname
    fill_in "Population", with: @country.population
    click_on "Create Country"

    assert_text "Country was successfully created"
    click_on "Back"
  end

  test "should update Country" do
    visit country_url(@country)
    click_on "Edit this country", match: :first

    fill_in "Cname", with: @country.cname
    fill_in "Population", with: @country.population
    click_on "Update Country"

    assert_text "Country was successfully updated"
    click_on "Back"
  end

  test "should destroy Country" do
    visit country_url(@country)
    click_on "Destroy this country", match: :first

    assert_text "Country was successfully destroyed"
  end
end
