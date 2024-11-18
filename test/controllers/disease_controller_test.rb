require "test_helper"

class DiseaseControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disease = disease(:one)
  end

  test "should get index" do
    get disease_index_url
    assert_response :success
  end

  test "should get new" do
    get new_disease_url
    assert_response :success
  end

  test "should create disease" do
    assert_difference("Disease.count") do
      post disease_index_url, params: { disease: { description: @disease.description, disease_code: @disease.disease_code, id: @disease.id, pathogen: @disease.pathogen } }
    end

    assert_redirected_to disease_url(Disease.last)
  end

  test "should show disease" do
    get disease_url(@disease)
    assert_response :success
  end

  test "should get edit" do
    get edit_disease_url(@disease)
    assert_response :success
  end

  test "should update disease" do
    patch disease_url(@disease), params: { disease: { description: @disease.description, disease_code: @disease.disease_code, id: @disease.id, pathogen: @disease.pathogen } }
    assert_redirected_to disease_url(@disease)
  end

  test "should destroy disease" do
    assert_difference("Disease.count", -1) do
      delete disease_url(@disease)
    end

    assert_redirected_to disease_index_url
  end
end
