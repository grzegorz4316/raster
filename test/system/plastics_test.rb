require "application_system_test_case"

class PlasticsTest < ApplicationSystemTestCase
  setup do
    @plastic = plastics(:one)
  end

  test "visiting the index" do
    visit plastics_url
    assert_selector "h1", text: "Plastics"
  end

  test "should create plastic" do
    visit plastics_url
    click_on "New plastic"

    fill_in "Description", with: @plastic.description
    fill_in "Mold1", with: @plastic.mold1
    fill_in "Mold1 cavity", with: @plastic.mold1_cavity
    fill_in "Mold1 speed", with: @plastic.mold1_speed
    fill_in "Mold1 weight", with: @plastic.mold1_weight
    fill_in "Mold2", with: @plastic.mold2
    fill_in "Mold2 cavity", with: @plastic.mold2_cavity
    fill_in "Mold2 speed", with: @plastic.mold2_speed
    fill_in "Mold2 weight", with: @plastic.mold2_weight
    fill_in "Name", with: @plastic.name
    click_on "Create Plastic"

    assert_text "Plastic was successfully created"
    click_on "Back"
  end

  test "should update Plastic" do
    visit plastic_url(@plastic)
    click_on "Edit this plastic", match: :first

    fill_in "Description", with: @plastic.description
    fill_in "Mold1", with: @plastic.mold1
    fill_in "Mold1 cavity", with: @plastic.mold1_cavity
    fill_in "Mold1 speed", with: @plastic.mold1_speed
    fill_in "Mold1 weight", with: @plastic.mold1_weight
    fill_in "Mold2", with: @plastic.mold2
    fill_in "Mold2 cavity", with: @plastic.mold2_cavity
    fill_in "Mold2 speed", with: @plastic.mold2_speed
    fill_in "Mold2 weight", with: @plastic.mold2_weight
    fill_in "Name", with: @plastic.name
    click_on "Update Plastic"

    assert_text "Plastic was successfully updated"
    click_on "Back"
  end

  test "should destroy Plastic" do
    visit plastic_url(@plastic)
    click_on "Destroy this plastic", match: :first

    assert_text "Plastic was successfully destroyed"
  end
end
