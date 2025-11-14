require "application_system_test_case"

class LefthandtechniquesTest < ApplicationSystemTestCase
  setup do
    @lefthandtechnique = lefthandtechniques(:one)
  end

  test "visiting the index" do
    visit lefthandtechniques_url
    assert_selector "h1", text: "Lefthandtechniques"
  end

  test "should create lefthandtechnique" do
    visit lefthandtechniques_url
    click_on "New lefthandtechnique"

    fill_in "Name", with: @lefthandtechnique.name
    click_on "Create Lefthandtechnique"

    assert_text "Lefthandtechnique was successfully created"
    click_on "Back"
  end

  test "should update Lefthandtechnique" do
    visit lefthandtechnique_url(@lefthandtechnique)
    click_on "Edit this lefthandtechnique", match: :first

    fill_in "Name", with: @lefthandtechnique.name
    click_on "Update Lefthandtechnique"

    assert_text "Lefthandtechnique was successfully updated"
    click_on "Back"
  end

  test "should destroy Lefthandtechnique" do
    visit lefthandtechnique_url(@lefthandtechnique)
    click_on "Destroy this lefthandtechnique", match: :first

    assert_text "Lefthandtechnique was successfully destroyed"
  end
end
