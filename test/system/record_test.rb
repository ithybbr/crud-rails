require "application_system_test_case"

class RecordTest < ApplicationSystemTestCase
  setup do
    @record = record(:one)
  end

  test "visiting the index" do
    visit record_url
    assert_selector "h1", text: "Record"
  end

  test "should create record" do
    visit record_url
    click_on "New record"

    fill_in "Cname", with: @record.cname
    fill_in "Disease code", with: @record.disease_code
    fill_in "Email", with: @record.email
    fill_in "Total deaths", with: @record.total_deaths
    fill_in "Total patients", with: @record.total_patients
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "should update Record" do
    visit record_url(@record)
    click_on "Edit this record", match: :first

    fill_in "Cname", with: @record.cname
    fill_in "Disease code", with: @record.disease_code
    fill_in "Email", with: @record.email
    fill_in "Total deaths", with: @record.total_deaths
    fill_in "Total patients", with: @record.total_patients
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "should destroy Record" do
    visit record_url(@record)
    click_on "Destroy this record", match: :first

    assert_text "Record was successfully destroyed"
  end
end
