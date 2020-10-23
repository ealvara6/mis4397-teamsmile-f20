require "application_system_test_case"

class LunchesTest < ApplicationSystemTestCase
  setup do
    @lunch = lunches(:one)
  end

  test "visiting the index" do
    visit lunches_url
    assert_selector "h1", text: "Lunches"
  end

  test "creating a Lunch" do
    visit lunches_url
    click_on "New Lunch"

    fill_in "Host", with: @lunch.host
    fill_in "Image", with: @lunch.image
    fill_in "Ingredients", with: @lunch.ingredients
    fill_in "Instructions", with: @lunch.instructions
    fill_in "Title", with: @lunch.title
    fill_in "Total time", with: @lunch.total_time
    fill_in "Yields", with: @lunch.yields
    click_on "Create Lunch"

    assert_text "Lunch was successfully created"
    click_on "Back"
  end

  test "updating a Lunch" do
    visit lunches_url
    click_on "Edit", match: :first

    fill_in "Host", with: @lunch.host
    fill_in "Image", with: @lunch.image
    fill_in "Ingredients", with: @lunch.ingredients
    fill_in "Instructions", with: @lunch.instructions
    fill_in "Title", with: @lunch.title
    fill_in "Total time", with: @lunch.total_time
    fill_in "Yields", with: @lunch.yields
    click_on "Update Lunch"

    assert_text "Lunch was successfully updated"
    click_on "Back"
  end

  test "destroying a Lunch" do
    visit lunches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lunch was successfully destroyed"
  end
end
