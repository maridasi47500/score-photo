require "test_helper"

class BowingtechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowingtechnique = bowingtechniques(:one)
  end

  test "should get index" do
    get bowingtechniques_url
    assert_response :success
  end

  test "should get new" do
    get new_bowingtechnique_url
    assert_response :success
  end

  test "should create bowingtechnique" do
    assert_difference("Bowingtechnique.count") do
      post bowingtechniques_url, params: { bowingtechnique: { name: @bowingtechnique.name } }
    end

    assert_redirected_to bowingtechnique_url(Bowingtechnique.last)
  end

  test "should show bowingtechnique" do
    get bowingtechnique_url(@bowingtechnique)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowingtechnique_url(@bowingtechnique)
    assert_response :success
  end

  test "should update bowingtechnique" do
    patch bowingtechnique_url(@bowingtechnique), params: { bowingtechnique: { name: @bowingtechnique.name } }
    assert_redirected_to bowingtechnique_url(@bowingtechnique)
  end

  test "should destroy bowingtechnique" do
    assert_difference("Bowingtechnique.count", -1) do
      delete bowingtechnique_url(@bowingtechnique)
    end

    assert_redirected_to bowingtechniques_url
  end
end
