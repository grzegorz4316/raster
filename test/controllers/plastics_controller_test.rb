require "test_helper"

class PlasticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plastic = plastics(:one)
  end

  test "should get index" do
    get plastics_url
    assert_response :success
  end

  test "should get new" do
    get new_plastic_url
    assert_response :success
  end

  test "should create plastic" do
    assert_difference("Plastic.count") do
      post plastics_url, params: { plastic: { description: @plastic.description, mold1: @plastic.mold1, mold1_cavity: @plastic.mold1_cavity, mold1_speed: @plastic.mold1_speed, mold1_weight: @plastic.mold1_weight, mold2: @plastic.mold2, mold2_cavity: @plastic.mold2_cavity, mold2_speed: @plastic.mold2_speed, mold2_weight: @plastic.mold2_weight, name: @plastic.name } }
    end

    assert_redirected_to plastic_url(Plastic.last)
  end

  test "should show plastic" do
    get plastic_url(@plastic)
    assert_response :success
  end

  test "should get edit" do
    get edit_plastic_url(@plastic)
    assert_response :success
  end

  test "should update plastic" do
    patch plastic_url(@plastic), params: { plastic: { description: @plastic.description, mold1: @plastic.mold1, mold1_cavity: @plastic.mold1_cavity, mold1_speed: @plastic.mold1_speed, mold1_weight: @plastic.mold1_weight, mold2: @plastic.mold2, mold2_cavity: @plastic.mold2_cavity, mold2_speed: @plastic.mold2_speed, mold2_weight: @plastic.mold2_weight, name: @plastic.name } }
    assert_redirected_to plastic_url(@plastic)
  end

  test "should destroy plastic" do
    assert_difference("Plastic.count", -1) do
      delete plastic_url(@plastic)
    end

    assert_redirected_to plastics_url
  end
end
