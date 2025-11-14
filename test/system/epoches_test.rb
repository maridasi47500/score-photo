require "application_system_test_case"

class EpochesTest < ApplicationSystemTestCase
  setup do
    @epoch = epoches(:one)
  end

  test "visiting the index" do
    visit epoches_url
    assert_selector "h1", text: "Epoches"
  end

  test "should create epoch" do
    visit epoches_url
    click_on "New epoch"

    fill_in "Name", with: @epoch.name
    click_on "Create Epoch"

    assert_text "Epoch was successfully created"
    click_on "Back"
  end

  test "should update Epoch" do
    visit epoch_url(@epoch)
    click_on "Edit this epoch", match: :first

    fill_in "Name", with: @epoch.name
    click_on "Update Epoch"

    assert_text "Epoch was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoch" do
    visit epoch_url(@epoch)
    click_on "Destroy this epoch", match: :first

    assert_text "Epoch was successfully destroyed"
  end
end
