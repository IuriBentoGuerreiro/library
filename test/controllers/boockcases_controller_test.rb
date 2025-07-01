require "test_helper"

class BoockcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boockcase = boockcases(:one)
  end

  test "should get index" do
    get boockcases_url, as: :json
    assert_response :success
  end

  test "should create boockcase" do
    assert_difference("Boockcase.count") do
      post boockcases_url, params: { boockcase: { limit: @boockcase.limit } }, as: :json
    end

    assert_response :created
  end

  test "should show boockcase" do
    get boockcase_url(@boockcase), as: :json
    assert_response :success
  end

  test "should update boockcase" do
    patch boockcase_url(@boockcase), params: { boockcase: { limit: @boockcase.limit } }, as: :json
    assert_response :success
  end

  test "should destroy boockcase" do
    assert_difference("Boockcase.count", -1) do
      delete boockcase_url(@boockcase), as: :json
    end

    assert_response :no_content
  end
end
