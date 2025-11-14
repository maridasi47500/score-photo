require "test_helper"

class LefthandtechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lefthandtechnique = lefthandtechniques(:one)
  end

  test "should get index" do
    get lefthandtechniques_url
    assert_response :success
  end

  test "should get new" do
    get new_lefthandtechnique_url
    assert_response :success
  end

  test "should create lefthandtechnique" do
    assert_difference("Lefthandtechnique.count") do
      post lefthandtechniques_url, params: { lefthandtechnique: { name: @lefthandtechnique.name } }
    end

    assert_redirected_to lefthandtechnique_url(Lefthandtechnique.last)
  end

  test "should show lefthandtechnique" do
    get lefthandtechnique_url(@lefthandtechnique)
    assert_response :success
  end

  test "should get edit" do
    get edit_lefthandtechnique_url(@lefthandtechnique)
    assert_response :success
  end

  test "should update lefthandtechnique" do
    patch lefthandtechnique_url(@lefthandtechnique), params: { lefthandtechnique: { name: @lefthandtechnique.name } }
    assert_redirected_to lefthandtechnique_url(@lefthandtechnique)
  end

  test "should destroy lefthandtechnique" do
    assert_difference("Lefthandtechnique.count", -1) do
      delete lefthandtechnique_url(@lefthandtechnique)
    end

    assert_redirected_to lefthandtechniques_url
  end
end
