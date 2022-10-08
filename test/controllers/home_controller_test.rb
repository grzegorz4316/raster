require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get orders" do
    get home_orders_url
    assert_response :success
  end

  test "should get plastic" do
    get home_plastic_url
    assert_response :success
  end

  test "should get test" do
    get home_test_url
    assert_response :success
  end
end
