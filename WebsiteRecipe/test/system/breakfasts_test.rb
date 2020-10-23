require "application_system_test_case"

class BreakfastsTest < ApplicationSystemTestCase
  setup do
    @breakfast = breakfasts(:one)
  end

  test "visiting the index" do
    visit breakfasts_url
    assert_selector "h1", text: "Breakfasts"
  end

  test "creating a Breakfast" do
    visit breakfasts_url
    click_on "New Breakfast"

    fill_in "Host", with: @breakfast.host
    fill_in "Image", with: @breakfast.image
    fill_in "Ingredients", with: @breakfast.ingredients
    fill_in "Instructions", with: @breakfast.instructions
    fill_in "Title", with: @breakfast.title
    fill_in "Total time", with: @breakfast.total_time
    fill_in "Yields", with: @breakfast.yields
    click_on "Create Breakfast"

    assert_text "Breakfast was successfully created"
    click_on "Back"
  end

  test "updating a Breakfast" do
    visit breakfasts_url
    click_on "Edit", match: :first

    fill_in "Host", with: @breakfast.host
    fill_in "Image", with: @breakfast.image
    fill_in "Ingredients", with: @breakfast.ingredients
    fill_in "Instructions", with: @breakfast.instructions
    fill_in "Title", with: @breakfast.title
    fill_in "Total time", with: @breakfast.total_time
    fill_in "Yields", with: @breakfast.yields
    click_on "Update Breakfast"

    assert_text "Breakfast was successfully updated"
    click_on "Back"
  end

  test "destroying a Breakfast" do
    visit breakfasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breakfast was successfully destroyed"
  end
end
