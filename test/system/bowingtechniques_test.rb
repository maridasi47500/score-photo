require "application_system_test_case"

class BowingtechniquesTest < ApplicationSystemTestCase
  setup do
    @bowingtechnique = bowingtechniques(:one)
  end

  test "visiting the index" do
    visit bowingtechniques_url
    assert_selector "h1", text: "Bowingtechniques"
  end

  test "should create bowingtechnique" do
    visit bowingtechniques_url
    click_on "New bowingtechnique"

    fill_in "Name", with: @bowingtechnique.name
    click_on "Create Bowingtechnique"

    assert_text "Bowingtechnique was successfully created"
    click_on "Back"
  end

  test "should update Bowingtechnique" do
    visit bowingtechnique_url(@bowingtechnique)
    click_on "Edit this bowingtechnique", match: :first

    fill_in "Name", with: @bowingtechnique.name
    click_on "Update Bowingtechnique"

    assert_text "Bowingtechnique was successfully updated"
    click_on "Back"
  end

  test "should destroy Bowingtechnique" do
    visit bowingtechnique_url(@bowingtechnique)
    click_on "Destroy this bowingtechnique", match: :first

    assert_text "Bowingtechnique was successfully destroyed"
  end
end
