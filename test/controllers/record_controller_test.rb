require "test_helper"

class RecordControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = record(:one)
  end

  test "should get index" do
    get record_index_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference("Record.count") do
      post record_index_url, params: { record: { cname: @record.cname, disease_code: @record.disease_code, email: @record.email, total_deaths: @record.total_deaths, total_patients: @record.total_patients } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { cname: @record.cname, disease_code: @record.disease_code, email: @record.email, total_deaths: @record.total_deaths, total_patients: @record.total_patients } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference("Record.count", -1) do
      delete record_url(@record)
    end

    assert_redirected_to record_index_url
  end
end
